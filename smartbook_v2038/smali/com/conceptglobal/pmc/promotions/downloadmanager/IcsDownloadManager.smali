.class public Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;
.super Ljava/lang/Object;
.source "IcsDownloadManager.java"


# static fields
.field public static final VISIBILITY_VISIBLE:I

.field private static mIcsDownloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;


# instance fields
.field private mDownloadFileSizeQuery:Landroid/app/DownloadManager$Query;

.field private mDownloadID:J

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mRequest:Landroid/app/DownloadManager$Request;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mIcsDownloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mIcsDownloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mIcsDownloadManager:Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;

    return-object v0
.end method


# virtual methods
.method public varargs cancelRequest([J)I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->remove([J)I

    move-result p1

    return p1
.end method

.method public getDownloadedNumberOfBytes(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .line 104
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadFileSizeQuery:Landroid/app/DownloadManager$Query;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p1, 0x1

    new-array p1, p1, [J

    const/4 v3, 0x0

    aput-wide v1, p1, v3

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 108
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadFileSizeQuery:Landroid/app/DownloadManager$Query;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 110
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "bytes_so_far"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const v1, 0xf4240

    .line 116
    div-int v3, v0, v1

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTotalNumberOfBytes(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .line 83
    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadFileSizeQuery:Landroid/app/DownloadManager$Query;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p1, 0x1

    new-array p1, p1, [J

    const/4 v3, 0x0

    aput-wide v1, p1, v3

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 87
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadFileSizeQuery:Landroid/app/DownloadManager$Query;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 89
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "total_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 92
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const v1, 0xf4240

    .line 93
    div-int v3, v0, v1

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initclassicDownlaod(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 47
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    .line 52
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 53
    invoke-virtual {v0, p3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object p2

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, v1, p3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p4}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object p1

    .line 59
    invoke-virtual {p1, p5}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object p1

    const/4 p2, 0x3

    .line 60
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mRequest:Landroid/app/DownloadManager$Request;

    .line 62
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {p2, p1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/conceptglobal/pmc/promotions/downloadmanager/IcsDownloadManager;->mDownloadID:J

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
