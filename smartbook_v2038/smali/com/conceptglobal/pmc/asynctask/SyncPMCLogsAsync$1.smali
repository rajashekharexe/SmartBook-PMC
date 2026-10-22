.class Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync$1;
.super Ljava/lang/Object;
.source "SyncPMCLogsAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync$1;->this$0:Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync;

    iput-object p2, p0, Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 91
    const-string v0, "SyncPMCLogsAsync"

    :try_start_0
    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync$1;->val$response:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync$1;->val$response:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync;->access$000()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 94
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLLOG4NET()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 98
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeletelog4net()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 100
    :try_start_2
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_0
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getTBLSYNCERRORLOG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 105
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/Queries;->getDeleteSyncErrorLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryOnDBInLoop(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    .line 107
    :try_start_4
    invoke-static {v0, v4}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    .line 113
    :try_start_5
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 115
    :cond_2
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync;->access$000()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    return-void

    :goto_3
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/SyncPMCLogsAsync;->access$000()Lcom/conceptglobal/pmc/database/DataBaseHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/database/DataBaseHandler;->closeDatabase()V

    .line 116
    throw v0
.end method
