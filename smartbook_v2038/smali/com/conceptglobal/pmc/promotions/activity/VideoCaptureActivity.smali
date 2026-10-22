.class public Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VideoCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;,
        Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$RunShowLoader;
    }
.end annotation


# static fields
.field private static final CAM_IMAGE:I = 0x2712

.field static final REQUEST_VIDEO_CAPTURE:I = 0x1

.field private static final RESULT_CODE_COMPRESS_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoCaptureActivity"


# instance fields
.field private activityId:I

.field private assignmentId:I

.field private attributeId:I

.field private bitmapdata:[B

.field private blobcountaddone:I

.field private blobcountfromDB:I

.field private bloburipath:Ljava/lang/String;

.field private btnCaptureVedio:Landroid/widget/Button;

.field private btnDelete:Landroid/widget/Button;

.field private btnSlectFile:Landroid/widget/Button;

.field private btncancel:Landroid/widget/Button;

.field private btnsave:Landroid/widget/Button;

.field private builder1:Landroid/app/AlertDialog$Builder;

.field compressedFile:Ljava/io/File;

.field private context:Landroid/content/Context;

.field private edtEventType:Landroid/widget/EditText;

.field private edtcomments:Landroid/widget/EditText;

.field private edtsubject:Landroid/widget/EditText;

.field private eventId:Landroid/widget/TextView;

.field private farmerId:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private imageFile:Ljava/io/File;

.field private imageId:J

.field private imagePath:Ljava/lang/String;

.field private imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

.field private img_view:Landroid/widget/ImageView;

.field private mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressdialog:Landroid/app/ProgressDialog;

.field private receiverIntent:Landroid/content/Intent;

.field private referenceId:Ljava/lang/String;

.field private referenceType:J

.field private final save:I

.field private tempFile:Ljava/io/File;

.field private tvComments:Landroid/widget/TextView;

.field private tvEvent:Landroid/widget/TextView;

.field private tvImage:Landroid/widget/TextView;

.field private tvStatus:Landroid/widget/TextView;

.field private tvSubject:Landroid/widget/TextView;

.field private tvlatitude:Landroid/widget/TextView;

.field private tvlongitude:Landroid/widget/TextView;

.field private final update:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->receiverIntent:Landroid/content/Intent;

    const/4 v0, 0x2

    .line 105
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->update:I

    const/4 v0, 0x1

    .line 106
    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->save:I

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->referenceType:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->eventId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imageId:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Ljava/io/File;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tempFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->progressdialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->progressdialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/Button;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnsave:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Lcom/conceptglobal/pmc/model/ImageDetails;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/EditText;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtsubject:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/EditText;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtcomments:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)[B
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->bitmapdata:[B

    return-object p0
.end method

.method static synthetic access$802(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;[B)[B
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->bitmapdata:[B

    return-object p1
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->img_view:Landroid/widget/ImageView;

    return-object p0
.end method

.method private deleteTempFile()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 549
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 550
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v0

    const-string v2, ":"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 551
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 552
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 555
    :cond_0
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 557
    const-string v0, "content://downloads/public_downloads"

    .line 558
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 557
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    .line 559
    :cond_1
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 560
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 562
    aget-object v4, v0, v2

    .line 563
    const-string v5, "image"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 564
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 565
    :cond_2
    const-string v5, "video"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 566
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 567
    :cond_3
    const-string v5, "audio"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 568
    sget-object p1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 571
    :cond_4
    :goto_0
    new-array v4, v3, [Ljava/lang/String;

    aget-object v0, v0, v3

    aput-object v0, v4, v2

    const-string v0, "_id=?"

    move-object v6, p1

    move-object v8, v0

    move-object v9, v4

    goto :goto_2

    :cond_5
    :goto_1
    move-object v6, p1

    move-object v8, v1

    move-object v9, v8

    .line 576
    :goto_2
    const-string p1, "content"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 577
    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    .line 582
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v10, 0x0

    .line 583
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 584
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 585
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 586
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 590
    :cond_6
    const-string p0, "file"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 591
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    :cond_7
    return-object v1
.end method

.method private getImageDetails()V
    .locals 4

    .line 335
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnsave:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnsave:Landroid/widget/Button;

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnsave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_updatePictureButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnDelete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtsubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtcomments:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imagePath:Ljava/lang/String;

    .line 344
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 601
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 597
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10040

    .line 329
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 605
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setData()V
    .locals 8

    const-string v0, ""

    .line 371
    iget-wide v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imageId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->eventId:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtEventType:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    const-string v2, "ItemKey"

    const-string v3, "ConfigurablelookupMaster"

    const-string v4, "ItemType"

    const-string v5, "ImageEventType"

    const-string v6, "ItemValue"

    iget-object v7, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getPictureEventDisplayField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 376
    const-string v1, "VideoCaptureActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 13

    .line 137
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->context:Landroid/content/Context;

    const v0, 0x7f0900ca

    .line 138
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnsave:Landroid/widget/Button;

    const/4 v1, 0x1

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f090543

    .line 140
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvImage:Landroid/widget/TextView;

    const v0, 0x7f090527

    .line 141
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvEvent:Landroid/widget/TextView;

    const v0, 0x7f09052a

    .line 142
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvSubject:Landroid/widget/TextView;

    const v0, 0x7f090529

    .line 143
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvComments:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvImage:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pictureTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvEvent:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_eventTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvSubject:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_subjectTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvComments:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_commentsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnsave:Landroid/widget/Button;

    const-string v2, "Save Video"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900c8

    .line 151
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btncancel:Landroid/widget/Button;

    const v0, 0x7f0900c9

    .line 152
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnDelete:Landroid/widget/Button;

    const v0, 0x7f090243

    .line 153
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->img_view:Landroid/widget/ImageView;

    const v0, 0x7f090155

    .line 154
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtcomments:Landroid/widget/EditText;

    const v0, 0x7f090156

    .line 155
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtsubject:Landroid/widget/EditText;

    const v0, 0x7f090150

    .line 156
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtEventType:Landroid/widget/EditText;

    .line 157
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btncancel:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->eventId:Landroid/widget/TextView;

    .line 160
    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtcomments:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 162
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    .line 163
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->receiverIntent:Landroid/content/Intent;

    .line 164
    const-string v2, "activityId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->activityId:I

    .line 165
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->receiverIntent:Landroid/content/Intent;

    const-string v2, "assignmentId"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->assignmentId:I

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->receiverIntent:Landroid/content/Intent;

    const-string v2, "attributeId"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->attributeId:I

    .line 167
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->receiverIntent:Landroid/content/Intent;

    const-string v2, "farmerId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->farmerId:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->receiverIntent:Landroid/content/Intent;

    const-string v2, "setReferenceType"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->referenceType:J

    .line 169
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->receiverIntent:Landroid/content/Intent;

    const-string v2, "setReferenceID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->referenceId:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->receiverIntent:Landroid/content/Intent;

    const-string v2, "imageId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imageId:J

    .line 172
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtEventType:Landroid/widget/EditText;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    iget-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->referenceType:J

    invoke-virtual {v2, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValuesBasedItemCode(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->referenceType:J

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x8

    const-string v2, ""

    cmp-long v12, v6, v8

    if-eqz v12, :cond_0

    cmp-long v8, v6, v10

    if-nez v8, :cond_1

    :cond_0
    iget-wide v8, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imageId:J

    cmp-long v12, v8, v4

    if-nez v12, :cond_1

    .line 184
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v1

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x2

    cmp-long v12, v6, v8

    if-eqz v12, :cond_2

    cmp-long v8, v6, v10

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x3

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    .line 186
    :cond_2
    iget-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imageId:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_3

    .line 187
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aget-object v6, v0, v2

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_3
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->img_view:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnsave:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btncancel:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$5;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public alertdialogbox(Ljava/lang/String;)V
    .locals 2

    .line 636
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->builder1:Landroid/app/AlertDialog$Builder;

    .line 638
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$7;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 644
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->builder1:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 645
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 649
    const-string v0, "VideoCaptureActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public checkinsertdata()V
    .locals 4

    .line 384
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;-><init>()V

    .line 385
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->activityId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setActivityId(I)V

    .line 386
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->assignmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setAssignmentId(I)V

    const/4 v1, 0x0

    .line 387
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setFarmerId(I)V

    .line 388
    iget-wide v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->imageId:J

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setImageId(J)V

    .line 389
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setPdaID(I)V

    .line 390
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCompressed(Z)V

    .line 393
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setPicturePath(Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCreatedBy(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtcomments:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setComments(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCtreatedDate(Ljava/lang/String;)V

    .line 397
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->edtsubject:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setSubject(Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setUpdatedBy(Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setUpdatedDate(Ljava/lang/String;)V

    .line 400
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->attributeId:I

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setAttributeId(I)V

    .line 401
    const-string v2, "101"

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setReferenceType(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->referenceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setReferenceId(Ljava/lang/String;)V

    .line 403
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->eventId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setEventTypeId(I)V

    const/4 v2, 0x2

    .line 404
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setContentTypeId(I)V

    .line 405
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnsave:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    .line 406
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsImage(Lcom/conceptglobal/pmc/model/ImageDetails;Z)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsImage(Lcom/conceptglobal/pmc/model/ImageDetails;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 410
    const-string v1, "VideoCaptureActivity"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public hideLoader()V
    .locals 1

    .line 615
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$6;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 453
    const-string v3, "VideoCaptureActivity"

    .line 0
    const-string v4, "Size: "

    const-string v5, "Display Name: "

    .line 453
    invoke-super/range {p0 .. p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    if-eqz p3, :cond_4

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    const/4 v7, 0x3

    const/4 v15, 0x0

    if-ne v0, v7, :cond_3

    if-eqz v14, :cond_4

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v14

    invoke-virtual/range {v7 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 463
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    const-string v0, "_display_name"

    .line 466
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 465
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v5, "_size"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 471
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 472
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 474
    :cond_0
    const-string v5, "Unknown"

    .line 476
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {v0, v1, v14}, Lcom/conceptglobal/pmc/promotions/utils/FileUtils;->saveTempFile(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tempFile:Ljava/io/File;

    .line 478
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    new-array v3, v15, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_1

    .line 483
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_1
    throw v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 483
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    if-ne v2, v6, :cond_4

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 490
    :try_start_1
    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->filePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 494
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->filePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tempFile:Ljava/io/File;

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "before compression"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;)V

    new-array v2, v15, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$VideoCompressor;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 441
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 442
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->deleteTempFile()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090088

    if-ne p1, v0, :cond_0

    .line 419
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    const-string v0, "video/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 421
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0044

    .line 112
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->setContentView(I)V

    .line 114
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->context:Landroid/content/Context;

    .line 115
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Video("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 117
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->Initialize()V

    .line 118
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getImageDetails()V

    .line 119
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->setData()V

    const p1, 0x7f090088

    .line 121
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnSlectFile:Landroid/widget/Button;

    .line 122
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090077

    .line 123
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->btnCaptureVedio:Landroid/widget/Button;

    .line 124
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904d7

    .line 125
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->tvStatus:Landroid/widget/TextView;

    const p1, 0x7f09035c

    .line 126
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->progressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f09045f

    .line 127
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 128
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 129
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 447
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 448
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->deleteTempFile()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 366
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public showLoader(Ljava/lang/String;)V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->hideLoader()V

    .line 610
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$RunShowLoader;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity$RunShowLoader;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCaptureActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
