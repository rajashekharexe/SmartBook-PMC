.class public Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ContentViewAdapterNew.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;,
        Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;
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

    .line 104
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mHandler:Landroid/os/Handler;

    .line 1135
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$7;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$7;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 105
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->masterList:Ljava/util/ArrayList;

    .line 107
    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    .line 108
    new-instance p2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {p2, p1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 109
    new-instance p1, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;-><init>(I)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    .line 110
    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->onAudioActionPerformed:Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;

    .line 111
    iput-object p4, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 112
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {p4, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/List;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/util/ArrayList;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->masterList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/content/Context;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->replaceRGBColorsWithHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 90
    invoke-direct/range {p0 .. p7}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->parsePageHeaderInfo(Ljava/lang/String;)Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->currentPlayingAudio:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->currentPlayingAudio:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/widget/SeekBar;)Ljava/lang/Runnable;
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/os/Handler;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Landroid/media/MediaPlayer;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)Ljava/lang/Runnable;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->resetSeekUpdaterRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private buildLabel(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 889
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 890
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 891
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xa

    .line 892
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f08009e

    .line 893
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-object v0
.end method

.method private downloadContent(Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;I)V
    .locals 4

    .line 916
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 919
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 921
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 922
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->startAnimating()V

    .line 924
    new-instance v2, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    invoke-direct {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;-><init>(Landroid/net/Uri;)V

    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DefaultRetryPolicy;-><init>()V

    .line 926
    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setRetryPolicy(Lcom/conceptglobal/pmc/promotions/downloadmanager/RetryPolicy;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->mediaPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setDestinationURI(Landroid/net/Uri;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    sget-object v1, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;->HIGH:Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setPriority(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest$Priority;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$4;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;ILcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;)V

    .line 929
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;->setStatusListener(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadStatusListenerV1;)Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;

    move-result-object p1

    .line 955
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;->add(Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadRequest;)I

    goto :goto_0

    .line 958
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

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

    .line 831
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 832
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 841
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 843
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    .line 844
    invoke-virtual {p1, v2}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 848
    const-string v1, "See More"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 850
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    .line 851
    new-instance v8, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$2;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    new-instance v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$3;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$3;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 881
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

    .line 882
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 883
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

    .line 898
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 899
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 900
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 901
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 902
    div-long v2, v0, v2

    const-wide/16 v4, 0xe10

    .line 903
    div-long v6, v2, v4

    mul-long v6, v6, v4

    sub-long/2addr v2, v6

    const-wide/16 v4, 0x3c

    .line 904
    div-long/2addr v2, v4

    .line 906
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

    .line 908
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

    .line 906
    const-string p1, "%02d:%02d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 910
    const-string v0, "Duration--"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private loadThumNailFromURL(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 319
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-void
.end method

.method private loadURL(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 963
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;

    invoke-direct {v0, p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)V

    const/4 p1, 0x0

    .line 964
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$LoadMetaData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;
    .locals 1

    .line 1103
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$6;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$6;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/widget/SeekBar;)V

    .line 1130
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->resetSeekUpdaterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private onAudioActionPerformed(Landroid/view/View;Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;Landroid/widget/SeekBar;Landroid/widget/ProgressBar;)V
    .locals 6

    .line 1049
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 1051
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1052
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p2, :cond_4

    .line 1053
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->pause()V

    .line 1055
    check-cast p1, Landroid/widget/ImageView;

    const p2, 0x7f08016c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x0

    .line 1056
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->currentPlayingAudio:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 1059
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1060
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1062
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3, p5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1064
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p3}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 p3, 0x0

    .line 1066
    invoke-virtual {p6, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 p4, 0x64

    .line 1067
    invoke-virtual {p6, p4}, Landroid/widget/SeekBar;->setMax(I)V

    const/16 p4, 0x8

    .line 1069
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    invoke-virtual {p7, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1071
    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p4, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$5;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {p3, p4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_1

    .line 1087
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1088
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1089
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1093
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 1094
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

    .line 1007
    new-instance v0, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;-><init>()V

    .line 1008
    invoke-static {p1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p1

    .line 1012
    invoke-interface {p1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 1015
    const-string v1, "meta[property=og:title]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    .line 1016
    const-string v2, "content"

    if-eqz v1, :cond_0

    .line 1017
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->title()Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setTitle(Ljava/lang/String;)V

    .line 1025
    :goto_0
    const-string v1, "meta[property=og:description]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1027
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 1030
    :cond_1
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setDescription(Ljava/lang/String;)V

    .line 1034
    :goto_1
    const-string v1, "meta[property=og:image]"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Document;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1036
    invoke-virtual {p1, v2}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 1040
    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/linkpreview/LinkPreview;->setSiteName(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private static replaceRGBColorsWithHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 1162
    const-string v0, "(rgb\\(\\s*(\\d+)\\s*,\\s*(\\d+)\\s*,\\s*(\\d+)\\s*\\))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1163
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1165
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1167
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1168
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 1171
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 1173
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 1175
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1177
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated r value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1178
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated g value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1179
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated b value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1182
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1183
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1184
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1187
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 1188
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 1189
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1193
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

    .line 1194
    new-array v13, v1, [Ljava/lang/Object;

    aput-object v7, v13, v10

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1195
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v10

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1197
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

    .line 1198
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1199
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

    .line 1202
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1204
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

    .line 1205
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

    .line 1211
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    const v1, 0x1030011

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 1212
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    .line 1213
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x7f0c0113

    .line 1214
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f09007d

    .line 1215
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f090276

    .line 1216
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1218
    new-instance v1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$8;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$8;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 335
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$1;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

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
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    const-string v0, "https://img.youtube.com/vi/"

    .line 155
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 157
    :try_start_0
    instance-of v2, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 158
    move-object v2, p1

    check-cast v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->access$000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    move-object v2, p1

    check-cast v2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v6, 0x7f0800e7

    const v7, 0x7f0801d8

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->filteredMasterList:Ljava/util/List;

    invoke-interface {v8, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 178
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 179
    invoke-virtual {p2, v7}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 180
    invoke-virtual {p2, v6}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 181
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/signature/ObjectKey;

    .line 183
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    .line 187
    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_0

    .line 194
    :cond_0
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 195
    invoke-virtual {p2, v7}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 196
    invoke-virtual {p2, v6}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 197
    invoke-virtual {p2, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    .line 199
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p2

    .line 200
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 201
    new-instance v2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v6, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getBaseUrlForVideos()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v6

    .line 203
    const-string v7, ""

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getInstance()Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getVideoIdFromYoutubeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default.jpg"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    .line 208
    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    .line 213
    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->access$200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 218
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    invoke-static {p2, v1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FileUtils;->downloadThumnail(Landroid/content/Context;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;Lcom/conceptglobal/pmc/promotions/downloadmanager/DownloadManager;)V

    .line 222
    :goto_0
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result p2

    if-eq p2, v4, :cond_3

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result p2

    if-ne p2, v3, :cond_2

    goto :goto_1

    .line 225
    :cond_2
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 223
    :cond_3
    :goto_1
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;->access$300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 237
    :cond_4
    instance-of p2, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p2, :cond_6

    .line 238
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$500(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$600(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 242
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 243
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 244
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 245
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->getVideoDuration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 247
    :cond_5
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 248
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 249
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;->access$800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AudioTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "N/A"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 251
    :cond_6
    instance-of p2, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    if-eqz p2, :cond_8

    .line 252
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->access$900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->access$1000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->access$1100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 257
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 258
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->access$1200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 259
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->access$1200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_2

    .line 261
    :cond_7
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->access$1200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 262
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;->access$1200(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$ImageTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_2

    .line 264
    :cond_8
    instance-of p2, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;

    if-eqz p2, :cond_a

    .line 265
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;->access$1300(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;->access$1400(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;->access$1500(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 270
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    new-instance p2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 271
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 272
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_2

    .line 274
    :cond_9
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 275
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;->access$1600(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$AttachementTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto/16 :goto_2

    .line 277
    :cond_a
    instance-of p2, p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    if-eqz p2, :cond_e

    .line 278
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$1700(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$1900(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 283
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080165

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 284
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {p2, v5, v5, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 286
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v0

    const/4 v4, 0x3

    const v5, 0x7f08014e

    if-eq v0, v4, :cond_d

    const/4 v4, 0x5

    if-eq v0, v4, :cond_c

    const/4 p2, 0x6

    if-eq v0, p2, :cond_b

    goto/16 :goto_2

    .line 292
    :cond_b
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x7f080149

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->loadURL(Ljava/lang/String;Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)V

    goto :goto_2

    .line 297
    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$1800(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    move-object v0, p1

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, p2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 302
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060048

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 288
    :cond_d
    move-object p2, p1

    check-cast p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$2000(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    check-cast p1, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;->access$2100(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$TextTypeVH;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 120
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0160

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 121
    new-instance p2, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;

    invoke-direct {p2, p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew$VideoTypeVH;-><init>(Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;Landroid/view/View;)V

    return-object p2
.end method

.method public updateProgressBar(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;->mUpdateTimeTask(Landroid/widget/SeekBar;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
