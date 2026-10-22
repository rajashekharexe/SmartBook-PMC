.class public Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VideoCapureActivityCopy2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$RunShowLoader;,
        Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$VideoCompressor;
    }
.end annotation


# static fields
.field private static final CAM_IMAGE:I = 0x2712

.field static final REQUEST_VIDEO_CAPTURE:I = 0x1

.field private static final RESULT_CODE_COMPRESS_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoCapureActivityCopy2"


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

.field private isFromTestimonials:Z

.field private mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

.field mCompressedFile:Ljava/io/File;

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

.field private videoDuration:I

.field videoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->receiverIntent:Landroid/content/Intent;

    const/4 v1, 0x2

    .line 125
    iput v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->update:I

    const/4 v1, 0x1

    .line 126
    iput v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->save:I

    .line 127
    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->compressedFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->eventId:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/ImageView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->img_view:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/app/ProgressDialog;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->progressdialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->progressdialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/content/Context;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->videoDuration:I

    return p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/Button;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Lcom/conceptglobal/pmc/model/ImageDetails;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/EditText;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtsubject:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Landroid/widget/EditText;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtcomments:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)Ljava/io/File;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tempFile:Ljava/io/File;

    return-object p0
.end method

.method private static copyFileToInternalStorage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 928
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 929
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 931
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p2, 0x400

    .line 934
    :try_start_2
    new-array p2, p2, [B

    .line 936
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    .line 937
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 939
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 940
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_1

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 931
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_2

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 941
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private deleteTempFile()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 953
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 956
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 957
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 958
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 959
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 964
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v7

    .line 962
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    .line 964
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v7

    :catchall_1
    move-exception p1

    move-object v7, p0

    :goto_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 965
    :cond_3
    throw p1
.end method

.method public static getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 872
    :cond_0
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 873
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, ":"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 874
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 875
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 876
    const-string p1, "primary"

    aget-object v0, p0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "/"

    if-eqz p1, :cond_1

    .line 877
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 879
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "/storage/"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p0, v4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 881
    :cond_2
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 882
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 883
    const-string v1, "raw:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 884
    const-string p0, ""

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 887
    :cond_3
    :try_start_0
    const-string v1, "content://downloads/public_downloads"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 888
    invoke-static {p0, p1, v0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    .line 892
    :cond_4
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 893
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 894
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 895
    aget-object v1, p1, v4

    .line 898
    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 899
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 900
    :cond_5
    const-string v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 901
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 902
    :cond_6
    const-string v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 903
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 907
    :cond_7
    :goto_0
    aget-object p1, p1, v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 908
    const-string v1, "_id=?"

    invoke-static {p0, v0, v1, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 912
    :cond_8
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 913
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_9

    .line 914
    const-string v0, "video.mp4"

    invoke-static {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->copyFileToInternalStorage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 916
    :cond_9
    invoke-static {p0, p1, v0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 918
    :cond_a
    const-string p0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 919
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v0
.end method

.method private getImageDetails()V
    .locals 4

    .line 498
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_updatePictureButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnDelete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtsubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtcomments:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imagePath:Ljava/lang/String;

    .line 507
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private getVideoDetails()V
    .locals 4

    .line 175
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-wide v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetailQueryBYImageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetail(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/ImageDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_updatePictureButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnDelete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtsubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtcomments:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getComments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imagePath:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->getPicturePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imagePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->img_view:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 980
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 973
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

    .line 489
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10040

    .line 492
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 987
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

    .line 535
    iget-wide v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    if-eqz v1, :cond_0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->eventId:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;->getEventTypeId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtEventType:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    const-string v2, "ItemKey"

    const-string v3, "ConfigurablelookupMaster"

    const-string v4, "ItemType"

    const-string v5, "ImageEventType"

    const-string v6, "ItemValue"

    iget-object v7, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imgDetails:Lcom/conceptglobal/pmc/model/ImageDetails;

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

    .line 540
    const-string v1, "VideoCapureActivityCopy2"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public Initialize()V
    .locals 13

    .line 196
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->context:Landroid/content/Context;

    const v0, 0x7f0900ca

    .line 197
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    const/4 v1, 0x1

    .line 198
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f090543

    .line 199
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvImage:Landroid/widget/TextView;

    const v0, 0x7f090527

    .line 200
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvEvent:Landroid/widget/TextView;

    const v0, 0x7f09052a

    .line 201
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvSubject:Landroid/widget/TextView;

    const v0, 0x7f090529

    .line 202
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvComments:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvImage:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pictureTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvEvent:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_eventTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvSubject:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_subjectTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvComments:Landroid/widget/TextView;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_commentsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    const-string v2, "Save Video"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900c8

    .line 210
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btncancel:Landroid/widget/Button;

    const v0, 0x7f0900c9

    .line 211
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnDelete:Landroid/widget/Button;

    const v0, 0x7f090243

    .line 212
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->img_view:Landroid/widget/ImageView;

    const v0, 0x7f090155

    .line 213
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtcomments:Landroid/widget/EditText;

    const v0, 0x7f090156

    .line 214
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtsubject:Landroid/widget/EditText;

    const v0, 0x7f090150

    .line 215
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtEventType:Landroid/widget/EditText;

    .line 216
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btncancel:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->eventId:Landroid/widget/TextView;

    .line 219
    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtcomments:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 221
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    .line 222
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->receiverIntent:Landroid/content/Intent;

    .line 223
    const-string v2, "activityId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->activityId:I

    .line 224
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->receiverIntent:Landroid/content/Intent;

    const-string v2, "assignmentId"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->assignmentId:I

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->receiverIntent:Landroid/content/Intent;

    const-string v2, "attributeId"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->attributeId:I

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->receiverIntent:Landroid/content/Intent;

    const-string v2, "farmerId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->farmerId:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->receiverIntent:Landroid/content/Intent;

    const-string v2, "setReferenceType"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->referenceType:J

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->receiverIntent:Landroid/content/Intent;

    const-string v2, "setReferenceID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->referenceId:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->receiverIntent:Landroid/content/Intent;

    const-string v2, "imageId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtEventType:Landroid/widget/EditText;

    new-instance v2, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    const-wide/16 v6, 0xf

    invoke-virtual {v2, v6, v7}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValuesBasedItemCode(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getlotdata(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->referenceType:J

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x8

    const-string v2, ""

    cmp-long v12, v6, v8

    if-eqz v12, :cond_1

    cmp-long v8, v6, v10

    if-nez v8, :cond_2

    :cond_1
    iget-wide v8, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    cmp-long v12, v8, v4

    if-nez v12, :cond_2

    .line 248
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v1

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0x2

    cmp-long v12, v6, v8

    if-eqz v12, :cond_3

    cmp-long v8, v6, v10

    if-eqz v8, :cond_3

    const-wide/16 v8, 0x3

    cmp-long v10, v6, v8

    if-nez v10, :cond_4

    .line 250
    :cond_3
    iget-wide v6, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_4

    .line 251
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aget-object v6, v0, v2

    aget-object v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :cond_4
    iget-object v4, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->eventId:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v0, v3

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtEventType:Landroid/widget/EditText;

    aget-object v0, v0, v3

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->img_view:Landroid/widget/ImageView;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$2;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$3;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btncancel:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$4;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$5;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$5;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public alertdialogbox(Ljava/lang/String;)V
    .locals 2

    .line 1019
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->builder1:Landroid/app/AlertDialog$Builder;

    .line 1021
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

    new-instance v1, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$7;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$7;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1027
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->builder1:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1028
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1032
    const-string v0, "VideoCapureActivityCopy2"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public checkinsertdata()V
    .locals 5

    .line 554
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/model/ImageDetails;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ImageDetails;-><init>()V

    .line 555
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->activityId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setActivityId(I)V

    .line 556
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->assignmentId:I

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setAssignmentId(I)V

    const/4 v1, 0x0

    .line 557
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setFarmerId(I)V

    .line 558
    iget-wide v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imageId:J

    invoke-virtual {v0, v2, v3}, Lcom/conceptglobal/pmc/model/ImageDetails;->setImageId(J)V

    .line 559
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setPdaID(I)V

    .line 560
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCompressed(Z)V

    .line 563
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setPicturePath(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCreatedBy(Ljava/lang/String;)V

    .line 565
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtcomments:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setComments(Ljava/lang/String;)V

    .line 566
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setCtreatedDate(Ljava/lang/String;)V

    .line 567
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->edtsubject:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setSubject(Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->mAppConstants:Lcom/conceptglobal/pmc/common/ConstantsPMC;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setUpdatedBy(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setUpdatedDate(Ljava/lang/String;)V

    .line 570
    iget v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->attributeId:I

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setAttributeId(I)V

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->referenceType:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setReferenceType(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->referenceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setReferenceId(Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->eventId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setEventTypeId(I)V

    const/4 v2, 0x2

    .line 574
    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/ImageDetails;->setContentTypeId(I)V

    .line 575
    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnsave:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    .line 576
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsVideo(Lcom/conceptglobal/pmc/model/ImageDetails;Z)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertFarmerActivityDetailsVideo(Lcom/conceptglobal/pmc/model/ImageDetails;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 583
    const-string v1, "VideoCapureActivityCopy2"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public hideLoader()V
    .locals 1

    .line 998
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$6;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    const-string v0, "Size: "

    const-string v1, "Display Name: "

    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    const/4 v3, 0x3

    .line 631
    const-string v4, "VideoCapureActivityCopy2"

    if-ne p1, v3, :cond_3

    .line 632
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 634
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 637
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 639
    const-string p3, "_display_name"

    .line 640
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 639
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v1, "_size"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 645
    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 646
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 648
    :cond_0
    const-string v1, "Unknown"

    .line 650
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {p3, p0, p1}, Lcom/conceptglobal/pmc/promotions/utils/FileUtils;->saveTempFile(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tempFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_1

    .line 657
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_1
    throw p1

    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 657
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :cond_3
    const/4 p3, 0x1

    if-ne p1, p3, :cond_4

    if-ne p2, v2, :cond_4

    .line 709
    :try_start_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->videoUri:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->filePath:Ljava/lang/String;

    .line 711
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->filePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tempFile:Ljava/io/File;

    .line 712
    const-string p1, "before compression"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tempFile:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 715
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 716
    invoke-static {v4, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 718
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tempFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->imagePath:Ljava/lang/String;

    .line 722
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->videoUri:Landroid/net/Uri;

    .line 723
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    const p2, 0x3dcccccd    # 0.1f

    .line 724
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->img_view:Landroid/widget/ImageView;

    .line 725
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 726
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 729
    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".VideoCompressor/Compressed Videos/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "VIDEO_"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 733
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp4"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->compressedFile:Ljava/io/File;

    :cond_4
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 614
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090088

    if-ne p1, v0, :cond_0

    .line 592
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    const-string v0, "video/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x3

    .line 594
    invoke-virtual {p0, p1, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c007b

    .line 134
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->setContentView(I)V

    .line 137
    iput-object p0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->context:Landroid/content/Context;

    .line 138
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getLanguageConfigurations(Landroid/content/Context;)V

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Video("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 140
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->Initialize()V

    .line 141
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getImageDetails()V

    .line 143
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getVideoDetails()V

    .line 145
    invoke-direct {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->setData()V

    const p1, 0x7f090088

    .line 147
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnSlectFile:Landroid/widget/Button;

    .line 148
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090077

    .line 149
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->btnCaptureVedio:Landroid/widget/Button;

    .line 150
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0904d7

    .line 151
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->tvStatus:Landroid/widget/TextView;

    const p1, 0x7f09035c

    .line 152
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->progressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f09045f

    .line 153
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 154
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 155
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FromTestimonials"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->isFromTestimonials:Z

    .line 162
    :cond_0
    :try_start_0
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->isFromTestimonials:Z

    if-eqz p1, :cond_1

    .line 163
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "TSTVideoDuration"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->videoDuration:I

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const-string v1, "VideoDuration"

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->videoDuration:I

    .line 167
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->videoDuration:I

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x1e

    :goto_1
    iput p1, p0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->videoDuration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 620
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 523
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 530
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public showLoader(Ljava/lang/String;)V
    .locals 1

    .line 992
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->hideLoader()V

    .line 993
    new-instance v0, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$RunShowLoader;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2$RunShowLoader;-><init>(Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/promotions/activity/VideoCapureActivityCopy2;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
