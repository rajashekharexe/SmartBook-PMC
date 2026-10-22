.class Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;
.super Ljava/lang/Thread;
.source "ContentDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadProgressCounter"
.end annotation


# instance fields
.field private cursor:Landroid/database/Cursor;

.field private final downloadId:J

.field private lastBytesDownloadedSoFar:I

.field mgr:Landroid/app/DownloadManager;

.field private final query:Landroid/app/DownloadManager$Query;

.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

.field private totalBytes:I


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;J)V
    .locals 2

    .line 1129
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1127
    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->access$800(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->mgr:Landroid/app/DownloadManager;

    .line 1130
    iput-wide p2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->downloadId:J

    .line 1131
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->query:Landroid/app/DownloadManager$Query;

    const/4 v0, 0x1

    .line 1132
    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p2, v0, v1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    return-void
.end method

.method static synthetic access$1900(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;)I
    .locals 0

    .line 1119
    iget p0, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->totalBytes:I

    return p0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    const-wide/16 v1, 0x12c

    .line 1142
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 1143
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->mgr:Landroid/app/DownloadManager;

    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->query:Landroid/app/DownloadManager$Query;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    .line 1144
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1147
    iget v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->totalBytes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "---"

    const-string v3, "DownloadLog"

    if-gtz v1, :cond_0

    .line 1148
    :try_start_1
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    const-string v4, "total_size"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->totalBytes:I

    .line 1149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "totalBytes--->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->totalBytes:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    const-string v4, "bytes_so_far"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytesDownloadedSoFar--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status--->false---"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/promotions/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1159
    :cond_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->this$0:Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;

    new-instance v3, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter$1;

    invoke-direct {v3, p0, v1}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter$1;-><init>(Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;I)V

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1171
    :cond_2
    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/activity/ContentDetailsActivity$DownloadProgressCounter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_3
    return-void
.end method
