.class public Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContentCategoryViewAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadingViewHolder;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadMetaData;
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
.field private final VIEW_TYPE_ITEM:I

.field private final VIEW_TYPE_LOADING:I

.field private activity:Landroid/app/Activity;

.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private context:Landroid/content/Context;

.field private currentPlayingAudio:Landroid/widget/ImageView;

.field private downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

.field private filteredMasterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private isDownloads:Z

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
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;",
            "Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;",
            "Landroid/media/MediaPlayer;",
            "Z)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->VIEW_TYPE_ITEM:I

    const/4 v0, 0x1

    .line 104
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->VIEW_TYPE_LOADING:I

    .line 1255
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$7;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 107
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->activity:Landroid/app/Activity;

    .line 109
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->masterList:Ljava/util/ArrayList;

    .line 110
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    .line 111
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 112
    new-instance p1, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;-><init>(I)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    .line 113
    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->onAudioActionPerformed:Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;

    .line 114
    iput-object p5, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 115
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p5, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 116
    iput-boolean p6, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->isDownloads:Z

    return-void
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->masterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->showDiscardAlert(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->isDownloads:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3800(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->replaceRGBColorsWithHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 88
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->parsePageHeaderInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/widget/ImageView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/widget/SeekBar;)Ljava/lang/Runnable;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/os/Handler;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Landroid/media/MediaPlayer;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)Ljava/lang/Runnable;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->resetSeekUpdaterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private buildLabel(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 1009
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1010
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 1011
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xa

    .line 1012
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f08009e

    .line 1013
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-object v0
.end method

.method private downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
    .locals 4

    .line 1036
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 1039
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1040
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1041
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 1042
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->startAnimating()V

    .line 1044
    new-instance v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;-><init>(Landroid/net/Uri;)V

    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>()V

    .line 1046
    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setRetryPolicy(Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->mediaPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setPriority(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$4;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;ILcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;)V

    .line 1049
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setStatusListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    .line 1075
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    goto :goto_0

    .line 1078
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

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

    .line 951
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 952
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 961
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 963
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 964
    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 968
    const-string v1, "See More"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 970
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    .line 971
    new-instance v8, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1001
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

    .line 1002
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 1003
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

    .line 1018
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1019
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 1020
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 1021
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 1022
    div-long v2, v0, v2

    const-wide/16 v4, 0xe10

    .line 1023
    div-long v6, v2, v4

    mul-long v6, v6, v4

    sub-long/2addr v2, v6

    const-wide/16 v4, 0x3c

    .line 1024
    div-long/2addr v2, v4

    .line 1026
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

    .line 1028
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

    .line 1026
    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1030
    const-string v0, "Duration--"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private loadThumNailFromURL(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 387
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-void
.end method

.method private loadURL(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1083
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadMetaData;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadMetaData;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)V

    const/4 p1, 0x0

    .line 1084
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadMetaData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;
    .locals 1

    .line 1223
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$6;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$6;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/widget/SeekBar;)V

    .line 1250
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->resetSeekUpdaterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
    .locals 6

    .line 1169
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 1171
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1172
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_4

    .line 1173
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->pause()V

    .line 1175
    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f08016c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 1176
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->currentPlayingAudio:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 1179
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1180
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1181
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1182
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1184
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 p3, 0x0

    .line 1186
    invoke-virtual {p6, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 p4, 0x64

    .line 1187
    invoke-virtual {p6, p4}, Landroid/widget/SeekBar;->setMax(I)V

    const/16 p4, 0x8

    .line 1189
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    invoke-virtual {p7, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1191
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$5;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$5;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {p3, p4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_1

    .line 1207
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1208
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1209
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1213
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 1214
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

    .line 1127
    new-instance v0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;-><init>()V

    .line 1128
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 1132
    invoke-interface {p1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 1135
    const-string v1, "meta[property=og:title]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 1136
    const-string v2, "content"

    if-eqz v1, :cond_0

    .line 1137
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    .line 1145
    :goto_0
    const-string v1, "meta[property=og:description]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1147
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 1150
    :cond_1
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    .line 1154
    :goto_1
    const-string v1, "meta[property=og:image]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1156
    invoke-virtual {p1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 1160
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setSiteName(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private static replaceRGBColorsWithHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1282
    const-string v0, "(rgb\\(\\s*(\\d+)\\s*,\\s*(\\d+)\\s*,\\s*(\\d+)\\s*\\))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1283
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1285
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1287
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1288
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 1291
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 1293
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 1295
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1297
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated r value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1298
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated g value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1299
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated b value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1302
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1303
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1304
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1307
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1308
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1309
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1313
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

    .line 1314
    new-array v13, v1, [Ljava/lang/Object;

    aput-object v7, v13, v10

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1315
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v10

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1317
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

    .line 1318
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1319
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

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1324
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

    .line 1325
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    return-object p0
.end method

.method private showDiscardAlert(I)V
    .locals 2

    .line 1349
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1350
    const-string v1, "Do you want to delete this ?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f080135

    .line 1351
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1352
    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$9;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$9;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;I)V

    const-string p1, "Delete"

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1368
    new-instance p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$10;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$10;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1374
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showImage(Ljava/lang/String;)V
    .locals 2

    .line 1331
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    const v1, 0x1030011

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 1332
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 1333
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x7f0c0113

    .line 1334
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09007d

    .line 1335
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090276

    .line 1336
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1339
    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$8;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$8;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showLoadingView(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadingViewHolder;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 403
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->masterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 163
    const-string v0, "Date : "

    const-string v1, "Name : "

    .line 0
    const-string v2, "https://img.youtube.com/vi/"

    .line 163
    instance-of v3, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    if-eqz v3, :cond_17

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v3, p2, 0x1

    .line 166
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 168
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->masterList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 169
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->filteredMasterList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    goto :goto_0

    :cond_0
    move-object v3, v5

    .line 172
    :goto_0
    :try_start_0
    instance-of v4, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_d

    .line 173
    move-object v4, p1

    check-cast v4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    move-object v4, p1

    check-cast v4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    move-object v4, p1

    check-cast v4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    move-object v4, p1

    check-cast v4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCreatedDate()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 178
    move-object v4, p1

    check-cast v4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCreatedDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_1
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800e7

    const v9, 0x7f0801d8

    if-nez v4, :cond_2

    goto/16 :goto_1

    .line 187
    :cond_2
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 189
    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 190
    invoke-virtual {v2, v9}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 191
    invoke-virtual {v2, v5}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 192
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    new-instance v4, Lcom/bumptech/glide/signature/ObjectKey;

    .line 194
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 196
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    new-instance v10, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    .line 197
    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    .line 198
    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_1

    .line 203
    :cond_3
    new-instance v4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 204
    invoke-virtual {v4, v9}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    .line 205
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    sget-object v10, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 206
    invoke-virtual {v4, v10}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    new-instance v10, Lcom/bumptech/glide/signature/ObjectKey;

    .line 208
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v10}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v4

    .line 209
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v10

    if-ne v10, v6, :cond_4

    .line 210
    new-instance v10, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v11, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getBaseUrlForVideos()Ljava/lang/String;

    move-result-object v10

    .line 211
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v11

    .line 212
    const-string v12, ""

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 213
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getInstance()Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getVideoIdFromYoutubeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/default.jpg"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    iget-object v10, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v10

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 216
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    .line 217
    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_1

    .line 220
    :cond_4
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    .line 221
    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    .line 222
    invoke-static {v4}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 227
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    invoke-static {v2, p2, v4}, Lcom/conceptglobal/pmc/promotions/utils/FileUtils;->downloadThumnail(Landroid/content/Context;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadManager;)V

    .line 231
    :goto_1
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v2

    if-eq v2, v7, :cond_6

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v2

    if-ne v2, v6, :cond_5

    goto :goto_2

    .line 234
    :cond_5
    move-object v2, p1

    check-cast v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 232
    :cond_6
    :goto_2
    move-object v2, p1

    check-cast v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    if-eqz v3, :cond_c

    .line 237
    move-object v2, p1

    check-cast v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    move-object v2, p1

    check-cast v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    move-object v2, p1

    check-cast v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    move-object v1, p1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object v1, p1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$1100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCreatedDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 243
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$1200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCreatedDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->convertDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_7
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_4

    .line 247
    :cond_8
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 250
    invoke-virtual {p2, v9}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 251
    invoke-virtual {p2, v5}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 252
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    .line 254
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 256
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 257
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    .line 258
    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$1300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4

    .line 263
    :cond_9
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 264
    invoke-virtual {v0, v9}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v5}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 266
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    .line 268
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    .line 272
    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$1300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    invoke-static {v0, p2, v1}, Lcom/conceptglobal/pmc/promotions/utils/FileUtils;->downloadThumnail(Landroid/content/Context;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadManager;)V

    .line 280
    :goto_4
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result p2

    if-eq p2, v7, :cond_b

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result p2

    if-ne p2, v7, :cond_a

    goto :goto_5

    .line 283
    :cond_a
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$1400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 281
    :cond_b
    :goto_5
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$1400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 286
    :cond_c
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 297
    :cond_d
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_f

    .line 298
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 302
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 303
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 304
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 305
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->getVideoDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 307
    :cond_e
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 308
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 309
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;->access$1900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "N/A"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 311
    :cond_f
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    if-eqz v0, :cond_11

    .line 312
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 317
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 318
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 319
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_6

    .line 321
    :cond_10
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 322
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;->access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_6

    .line 324
    :cond_11
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;

    if-eqz v0, :cond_13

    .line 325
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;->access$2400(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;->access$2500(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;->access$2600(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 330
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 331
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;->access$2700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 332
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;->access$2700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_6

    .line 334
    :cond_12
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;->access$2700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 335
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;->access$2700(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_6

    .line 337
    :cond_13
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    if-eqz v0, :cond_18

    .line 338
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$2800(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3000(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 343
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080165

    invoke-static {v0, v1, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 346
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v1

    const/4 v2, 0x3

    const v3, 0x7f08014e

    if-eq v1, v2, :cond_16

    const/4 v2, 0x5

    if-eq v1, v2, :cond_15

    const/4 v0, 0x6

    if-eq v1, v0, :cond_14

    goto/16 :goto_6

    .line 352
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080149

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->loadURL(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)V

    goto :goto_6

    .line 357
    :cond_15
    move-object v1, p1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 358
    move-object v1, p1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {v1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$2900(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 362
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060048

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 348
    :cond_16
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;->access$3200(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 373
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 375
    :cond_17
    instance-of v0, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadingViewHolder;

    if-eqz v0, :cond_18

    .line 376
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadingViewHolder;

    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->showLoadingView(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadingViewHolder;I)V

    :cond_18
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 124
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c0075

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 125
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$VideoTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;)V

    return-object p2

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0c00cd

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 150
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadingViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter$LoadingViewHolder;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public updateProgressBar(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentCategoryViewAdapter;->mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
