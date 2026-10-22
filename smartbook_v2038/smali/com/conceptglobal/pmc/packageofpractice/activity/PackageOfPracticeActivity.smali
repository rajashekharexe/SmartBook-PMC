.class public Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PackageOfPracticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.conceptglobal.pmc.packageofpractice.activity.PackageOfPracticeActivity"


# instance fields
.field NUM_BYTES_NEEDED_FOR_MY_APP:J

.field adapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

.field private context:Landroid/content/Context;

.field cropCategoryList:Landroidx/recyclerview/widget/RecyclerView;

.field cropCategoryModalArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/conceptglobal/pmc/packageofpractice/models/CropCategoryModal;",
            ">;"
        }
    .end annotation
.end field

.field private getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

.field individualCropItem:Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;

.field private isDownloadInprogress:Z

.field libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-wide/32 v0, 0x32000

    .line 64
    iput-wide v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->isDownloadInprogress:Z

    return p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->isDownloadInprogress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->showAlertDownloadDialog(Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->downloadLatestHtmlFiles(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->openCropHtmlPage(Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;)V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->progress:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->initData()V

    return-void
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method private downloadLatestHtmlFiles(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;I)V
    .locals 13

    move-object v9, p0

    const-string v0, "select DownloadID from DownLoadFileDetails where ContentID ="

    .line 209
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->getAvailableFreeSpace()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 214
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/DeviceMemory;->getInternalFreeSpaceInMB()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    mul-long v3, v3, v1

    .line 215
    iget-wide v5, v9, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Available size is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB.\n minimum 200 MB is required to download data, please delete some files and try again."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->showAlertDialog(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v10, 0x1

    .line 220
    iput-boolean v10, v9, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->isDownloadInprogress:Z

    const-wide/16 v1, 0x0

    .line 223
    :try_start_0
    iget-object v3, v9, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getSingleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 225
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-wide v3, v1

    .line 230
    :goto_0
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getHtmlZipURL()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {p0}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 235
    new-instance v6, Ljava/io/File;

    const-string v8, "sample_download"

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 238
    const-string v5, "ExtractLoc"

    invoke-static {p0, v5}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileUtils;->getDataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    .line 241
    new-instance v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v11

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;JLcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;Ljava/lang/String;Landroid/widget/ProgressBar;I)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->start()V

    .line 242
    const-string v0, "Download Inprogress"

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 257
    :cond_3
    new-instance v1, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;

    move-object v12, p1

    move v2, p2

    invoke-direct {v1, p0, v11, p1, p2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$5;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;I)V

    .line 299
    invoke-static {}, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->getInstance()Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;

    move-result-object v1

    .line 300
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getCropName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "download progress"

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v7, v8

    .line 299
    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->initclassicDownlaod(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 303
    const-string v0, "Download started."

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 305
    new-instance v0, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v0, v1, v8, v2, v5}, Lcom/conceptglobal/pmc/promotions/database/CategoryDAO;->InsertDownloadDetails(Ljava/lang/String;Ljava/lang/String;II)V

    .line 306
    new-instance v0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, v11

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;JLcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;Ljava/lang/String;Landroid/widget/ProgressBar;I)V

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$DownloadProgressCounter;->start()V

    return-void
.end method

.method private downloadLatestLibraryFilesFromServer(Ljava/lang/String;II)V
    .locals 5

    .line 338
    invoke-static {p0}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/io/File;

    const-string v2, "sample_download"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v1, "ExtractLoc"

    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileUtils;->getDataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 346
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->progress:Landroid/app/ProgressDialog;

    .line 347
    const-string v3, "Please wait...while we are fetching data from server.."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->progress:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 349
    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->progress:Landroid/app/ProgressDialog;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 350
    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 351
    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->progress:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 353
    new-instance v2, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;

    invoke-direct {v2, p1, v0}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->setRequiresUnzip(Z)V

    .line 355
    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->setDeleteZipAfterExtract(Z)V

    .line 356
    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;->setUnzipAtFilePath(Ljava/lang/String;)V

    .line 358
    new-instance p1, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;

    invoke-direct {p1, p0, v1, p3, p2}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$6;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Ljava/lang/String;II)V

    .line 393
    invoke-static {v2, p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->getInstance(Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$DownloadRequest;Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$OnDownloadStatusListener;)Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;

    move-result-object p1

    .line 394
    invoke-virtual {p1, p0}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileDownloadService$FileDownloader;->download(Landroid/content/Context;)V

    return-void
.end method

.method private getAvailableFreeSpace()Z
    .locals 8

    .line 172
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 177
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    .line 182
    :goto_0
    :try_start_1
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/util/UUID;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 184
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v2, 0x0

    .line 186
    :goto_1
    iget-wide v4, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->NUM_BYTES_NEEDED_FOR_MY_APP:J

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_0

    .line 188
    :try_start_2
    invoke-static {v0, v1, v4, v5}, Lcom/conceptglobal/pmc/LoginActivity$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/storage/StorageManager;Ljava/util/UUID;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v6

    .line 195
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_free_space_alert()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
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
    invoke-direct {p0, v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->showAlertDialog(Ljava/lang/String;)V

    return v6
.end method

.method private initData()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getPOPCropCategoryDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getCropCategoryDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->cropCategoryModalArrayList:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->cropCategoryModalArrayList:Ljava/util/ArrayList;

    new-instance v2, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$1;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/conceptglobal/pmc/packageofpractice/adapter/IndividualCropAdapter$CropEventListener;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->adapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    const v0, 0x7f090112

    .line 129
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->cropCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 131
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->cropCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->cropCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/DividerItemDecoration;

    invoke-direct {v2, p0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 133
    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->cropCategoryList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->adapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private openCropHtmlPage(Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;)V
    .locals 4

    .line 314
    const-string v0, ""

    :try_start_0
    const-string v1, "ExtractLoc"

    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileUtils;->getDataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getCropName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->setLocalHTMLZIPURL(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 318
    invoke-virtual {p2, v1}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->setDeviceVersionNo(I)V

    .line 319
    iget-object v2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->adapter:Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;

    invoke-virtual {v2, p2, v1}, Lcom/conceptglobal/pmc/packageofpractice/adapter/CropCategoryAdapter;->updateAdapter(Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;I)V

    .line 320
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/conceptglobal/pmc/common/Queries;->updateCropDetails2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    const-string v1, "localHTMLZIPURL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string p1, "htmlStartPage"

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getHtmlStartPage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string p1, "cropName"

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getCropName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string p1, "POPID"

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;->getPopID()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 157
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
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

    new-instance v2, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$4;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$4;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showAlertDownloadDialog(Ljava/lang/String;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;)V
    .locals 5

    .line 138
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$2;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;Lcom/conceptglobal/pmc/packageofpractice/models/IndividualCropItemModal;ILandroid/widget/ProgressBar;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object p3

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$3;

    invoke-direct {p3, p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity$3;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;)V

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    .line 72
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->setContentView(I)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Package of Practice ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)Landroidx/appcompat/widget/Toolbar;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->cropCategoryModalArrayList:Ljava/util/ArrayList;

    .line 75
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->getDataFromDB:Lcom/conceptglobal/pmc/database/GetDataFromDB;

    .line 76
    iput-object p0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->context:Landroid/content/Context;

    .line 79
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getLibraryDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getLibraryDetails(Ljava/lang/String;)Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    if-eqz p1, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getLocalHTMLZIPURL()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getLocalHTMLZIPURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getVersionNo()I

    move-result p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getDeviceVersionNo()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    :try_start_0
    const-string p1, "ExtractLoc"

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/packageofpractice/utility/FileUtils;->getDataDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/css"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getHTMLZIPURL()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getPOPID()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getVersionNo()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->downloadLatestLibraryFilesFromServer(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getHTMLZIPURL()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getPOPID()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->libraryDetails:Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/packageofpractice/models/LibraryDetails;->getVersionNo()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->downloadLatestLibraryFilesFromServer(Ljava/lang/String;II)V

    .line 97
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->initData()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 400
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 405
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/PackageOfPracticeActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
