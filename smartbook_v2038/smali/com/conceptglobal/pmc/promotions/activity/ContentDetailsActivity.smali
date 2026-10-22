.class public Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ContentDetailsActivity.java"

# interfaces
.implements Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;,
        Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;,
        Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_THREAD_POOL_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ContentDetailsActivity"


# instance fields
.field NUM_BYTES_NEEDED_FOR_MY_APP:J

.field private categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

.field private chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

.field private contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

.field private contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

.field private context:Landroid/content/Context;

.field private contextId:I

.field private downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

.field private ivActionPlay:Landroid/widget/ImageView;

.field private ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

.field private ivFavourites:Landroid/widget/ImageView;

.field private ivShare:Landroid/widget/ImageView;

.field private ivThumbNail:Landroid/widget/ImageView;

.field keysList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private llm:Landroidx/recyclerview/widget/LinearLayoutManager;

.field mIcsDownloadId:J

.field private mTask:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;

.field private masterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field progressBarDialog:Landroid/app/ProgressDialog;

.field private reciever:Landroid/content/BroadcastReceiver;

.field private relatedMasterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/promotions/models/ContentMaster;",
            ">;"
        }
    .end annotation
.end field

.field private rvRelated:Landroidx/recyclerview/widget/RecyclerView;

.field private thumbnail:Lcom/google/android/youtube/player/YouTubeThumbnailView;

.field private thumbnailListener:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;

.field private thumbnailViewToLoaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/youtube/player/YouTubeThumbnailView;",
            "Lcom/google/android/youtube/player/YouTubeThumbnailLoader;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;

.field private tvBrand:Landroid/widget/TextView;

.field private tvCategory:Landroid/widget/TextView;

.field private tvCrop:Landroid/widget/TextView;

.field private tvLanguage:Landroid/widget/TextView;

.field private tvPublishedDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 110
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->keysList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 132
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    const-wide/32 v0, 0x7d000

    .line 133
    iput-wide v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    const/4 v0, 0x1

    .line 136
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contextId:I

    .line 263
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->reciever:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivFavourites:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->shareContent(Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->replaceRGBColorsWithHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->relatedMasterList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setAdapter()V

    return-void
.end method

.method static synthetic access$1800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvBrand:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Ljava/util/Map;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnailViewToLoaderMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/models/ContentMaster;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivShare:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contextId:I

    return p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Z
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getAvailableFreeSpace()Z

    move-result p0

    return p0
.end method

.method private buildLabel(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 1074
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1075
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    .line 1076
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 p1, 0xa

    .line 1077
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x7f08009e

    .line 1078
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-object v0
.end method

.method private devideKeys()V
    .locals 4

    .line 970
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getSearchKeys()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getSearchKeys()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getSearchKeys()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 972
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 973
    aget-object v2, v0, v1

    const-string v3, ""

    if-eq v2, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 974
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->keysList:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1010
    :goto_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->keysList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1011
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->keysList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1012
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->keysList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    :cond_1
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1017
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->removeAllViews()V

    .line 1026
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_4

    :goto_1
    if-ge v0, v2, :cond_3

    .line 1028
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 1029
    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1032
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1033
    const-string v1, "See More"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1035
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    .line 1036
    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$12;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$13;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$13;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1066
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1067
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->buildLabel(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 1068
    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private getAvailableFreeSpace()Z
    .locals 8

    .line 472
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 477
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    .line 482
    :goto_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/util/UUID;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 484
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v2, 0x0

    .line 486
    :goto_1
    iget-wide v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_0

    .line 488
    :try_start_2
    invoke-static {v0, v1, v4, v5}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/util/UUID;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v6

    .line 495
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 496
    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_free_space_alert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Available size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB.\n minimum 500 MB is required to download data, please delete some files and try again."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->showAlertDialog(Ljava/lang/String;)V

    return v6
.end method

.method private initViews()V
    .locals 3

    const v0, 0x7f090269

    .line 635
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivThumbNail:Landroid/widget/ImageView;

    const/4 v1, 0x1

    .line 636
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const v0, 0x7f090608

    .line 637
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubeThumbnailView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnail:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    .line 638
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 639
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnail:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivThumbNail:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnail:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivThumbNail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0905ad

    .line 645
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvPublishedDate:Landroid/widget/TextView;

    const v0, 0x7f0905a5

    .line 646
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvCrop:Landroid/widget/TextView;

    const v0, 0x7f0905a2

    .line 647
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvBrand:Landroid/widget/TextView;

    const v0, 0x7f0905a3

    .line 648
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvCategory:Landroid/widget/TextView;

    const v0, 0x7f0905aa

    .line 649
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvLanguage:Landroid/widget/TextView;

    const v0, 0x7f09039f

    .line 650
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09025a

    .line 651
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    const v0, 0x7f090231

    .line 652
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivFavourites:Landroid/widget/ImageView;

    const v0, 0x7f090264

    .line 653
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivShare:Landroid/widget/ImageView;

    const v0, 0x7f09004a

    .line 654
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivActionPlay:Landroid/widget/ImageView;

    const v0, 0x7f0900f3

    .line 655
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    .line 656
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivShare:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$7;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnail:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$8;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$8;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivThumbNail:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$9;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 221
    new-instance v0, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;-><init>()V

    .line 222
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentIds(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;->setContentTypes(Ljava/lang/String;)V

    .line 224
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mTask:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;

    const/4 p2, 0x1

    .line 225
    new-array p2, p2, [Lcom/conceptglobal/pmc/promotions/models/FilterCriteria;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadHtml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 893
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00c6

    const/4 v2, 0x0

    .line 894
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090540

    .line 896
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 897
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 898
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x3f

    .line 900
    invoke-static {p2, v2}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    :goto_0
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 903
    invoke-virtual {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 904
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 906
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$11;

    invoke-direct {p1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$11;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    const-string v0, "Close"

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 912
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 913
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const v0, 0x7f110124

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 914
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private static replaceRGBColorsWithHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 921
    const-string v0, "(rgb\\(\\s*(\\d+)\\s*,\\s*(\\d+)\\s*,\\s*(\\d+)\\s*\\))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 922
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 924
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 926
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 927
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 930
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 932
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 934
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 936
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated r value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 937
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated g value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 938
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " separated b value: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 941
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 942
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 943
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 946
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 947
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 948
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 952
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

    .line 953
    new-array v13, v1, [Ljava/lang/Object;

    aput-object v7, v13, v10

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 954
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v10

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 956
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

    .line 957
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 958
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

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 963
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

    .line 964
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    return-object p0
.end method

.method private setAdapter()V
    .locals 4

    .line 575
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->relatedMasterList:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/conceptglobal/pmc/promotions/interfaces/OnAudioActionPerformed;Landroid/media/MediaPlayer;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentViewAdapter:Lcom/conceptglobal/pmc/promotions/adapters/ContentViewAdapterNew;

    .line 576
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 578
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 4

    .line 583
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    .line 584
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 586
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->llm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 587
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->rvRelated:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 589
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0800e7

    const v2, 0x7f0801aa

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 591
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 592
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 593
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 597
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getLocalThumbnail()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 598
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivThumbNail:Landroid/widget/ImageView;

    .line 599
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 602
    :cond_0
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 603
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 604
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 605
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getThumbNail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 610
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivThumbNail:Landroid/widget/ImageView;

    .line 611
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 616
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getFavouriteStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setFavouriteStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 621
    :goto_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getFavouriteStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 622
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivFavourites:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivFavourites:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCreatedDate()Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvCrop:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private setListeners()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivFavourites:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setViewsVisibility()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsDownloadable()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsDownloadable()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsDownloadable()Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setVisibility(I)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsSharable()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getIsSharable()Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivShare:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setViewsVisibilityGone()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private shareContent(Lcom/conceptglobal/pmc/promotions/models/ContentMaster;)V
    .locals 4

    .line 818
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 827
    :cond_0
    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 821
    :cond_1
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 830
    :cond_2
    const-string v1, "pplication/pdf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 824
    :cond_3
    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    const-string v3, "com.conceptglobal.pmcdeepakfertilizers.provider"

    invoke-static {p1, v3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 838
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 839
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 840
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    const-string v1, "Share via"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 847
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 848
    const-string v0, "ContentDetailsActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 508
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showImage(Ljava/lang/String;)V
    .locals 5

    .line 861
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 862
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 863
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v2, 0x0

    .line 864
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    const v2, 0x7f0c0113

    .line 865
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f09007d

    .line 866
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f090276

    .line 867
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 868
    invoke-virtual {v3, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->setAdjustViewBounds(Z)V

    .line 870
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v4, 0x7f0801aa

    .line 871
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    const v4, 0x7f0800e7

    .line 872
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 873
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 877
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 878
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 879
    invoke-virtual {p1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 882
    new-instance p1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$10;

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$10;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 889
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .line 522
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->progressBarDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080155

    .line 526
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 528
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->progressBarDialog:Landroid/app/ProgressDialog;

    const-string v1, "Showing progress..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->progressBarDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 534
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->progressBarDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$5;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    const/4 v2, -0x1

    const-string v3, "OK"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->progressBarDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$6;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$6;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)V

    const/4 v2, -0x2

    const-string v3, "Cancel"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 549
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->progressBarDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 569
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->progressBarDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioActionPerformed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "select DownloadID from DownLoadFileDetails where ContentID ="

    .line 140
    invoke-super/range {p0 .. p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0024

    .line 141
    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setContentView(I)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Details ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->relatedMasterList:Ljava/util/ArrayList;

    .line 147
    const-string v4, "ContentList"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->masterList:Ljava/util/ArrayList;

    .line 148
    const-string v4, "Position"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->position:I

    .line 149
    iget-object v4, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->masterList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    iput-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    .line 150
    iput-object v1, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    .line 151
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    .line 153
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v4

    iget-object v5, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getContextIDQry(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contextId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :goto_0
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;-><init>(I)V

    iput-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->downloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/FileDownloadManager;

    const-wide/16 v4, 0x0

    .line 159
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v6

    const-string v7, "FreeSpaceRequiredForDC"

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->getItemValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLookupValue(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    const-wide/16 v8, 0x400

    mul-long v6, v6, v8

    goto :goto_1

    .line 160
    :cond_0
    iget-wide v6, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    :goto_1
    iput-wide v6, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    :cond_1
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->devideKeys()V

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->initViews()V

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setListeners()V

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setData()V

    .line 177
    const-string v0, ""

    invoke-direct {v1, v0, v0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->loadData(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setAdapter()V

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setViewsVisibility()V

    .line 180
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->chipsBoxLayout:Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;

    iget-object v6, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getCategoryDetails()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->fillAutoSpacingLayout(Lcom/conceptglobal/pmc/promotions/utils/FlowLayout;Ljava/util/ArrayList;)V

    .line 181
    invoke-static/range {p0 .. p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v6, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->reciever:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "DownloadStatus"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 183
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getContentDeviceLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    iget-object v6, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v6, v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 185
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 186
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 187
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v2, v7}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setProgress(F)V

    .line 188
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvBrand:Landroid/widget/TextView;

    const-string v7, "Downloaded,Available in local"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getInstance()Lcom/conceptglobal/pmc/promotions/common/Queries;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/promotions/common/Queries;->getDownLoadFileDetailsDeleteQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->executeQuery(Ljava/lang/String;)V

    .line 190
    iput-wide v4, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->mIcsDownloadId:J

    .line 191
    new-instance v2, Ljava/io/File;

    iget-object v4, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentDeviceLocation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 192
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v4, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v4

    invoke-virtual {v2, v4, v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->updateContent(ILjava/lang/String;)V

    .line 193
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->setContentDeviceLocation(Ljava/lang/String;)V

    .line 194
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 195
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    goto :goto_4

    .line 198
    :cond_2
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->reset()V

    .line 199
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivDownloads:Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/promotions/utils/ArrowDownloadButton;->setEnabled(Z)V

    .line 200
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->tvBrand:Landroid/widget/TextView;

    const-string v4, "Not Downloaded."

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_3
    :goto_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnailViewToLoaderMap:Ljava/util/Map;

    .line 203
    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$1;)V

    iput-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnailListener:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;

    .line 204
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->setViewsVisibilityGone()V

    .line 206
    new-instance v2, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v5, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getBaseUrlForVideos()Ljava/lang/String;

    move-result-object v2

    .line 207
    iget-object v5, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentServerLocation()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnail:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getInstance()Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getVideoIdFromYoutubeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->setTag(Ljava/lang/Object;)V

    .line 210
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnail:Lcom/google/android/youtube/player/YouTubeThumbnailView;

    const-string v2, "AIzaSyDtjezmhXAqnlVDUTD5Mc-OgAuuoDMlh4c"

    iget-object v5, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->thumbnailListener:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$ThumbnailListener;

    invoke-virtual {v0, v2, v5}, Lcom/google/android/youtube/player/YouTubeThumbnailView;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubeThumbnailView$OnInitializedListener;)V

    .line 212
    :cond_4
    iget-object v7, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v8

    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getParentCatId()I

    move-result v9

    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->categoryDAO:Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getPdaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->getUserId()I

    move-result v11

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTimeForLogs()Ljava/lang/String;

    move-result-object v12

    iget v15, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contextId:I

    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentId()I

    move-result v18

    const-string v19, "ContentID"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v16, "DETAILS"

    const/16 v17, 0x1

    invoke-virtual/range {v7 .. v19}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->insertContentLog(IIIILjava/lang/String;ZZILjava/lang/String;IILjava/lang/String;)V

    .line 213
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v0

    if-eq v0, v3, :cond_6

    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->contentMaster:Lcom/conceptglobal/pmc/promotions/models/ContentMaster;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/promotions/models/ContentMaster;->getContentType()I

    move-result v0

    if-ne v0, v4, :cond_5

    goto :goto_5

    .line 216
    :cond_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivActionPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 214
    :cond_6
    :goto_5
    iget-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->ivActionPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 255
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 256
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->reciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->finish()V

    .line 250
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
