.class Lcom/conceptglobal/pmc/LoginActivity$10;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->showDBDeleteDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1269
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1272
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalPendingRecordsCount()I

    move-result p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getTotalPictureReportingRecords()I

    move-result p2

    add-int/2addr p1, p2

    if-nez p1, :cond_0

    .line 1273
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1600(Lcom/conceptglobal/pmc/LoginActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$1600(Lcom/conceptglobal/pmc/LoginActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "N"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1275
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabaseFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteDir(Ljava/io/File;)Z

    .line 1276
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->val$ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteCache(Landroid/content/Context;)V

    .line 1277
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V

    goto :goto_0

    .line 1280
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$500(Lcom/conceptglobal/pmc/LoginActivity;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1281
    iget-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/LoginActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1282
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V

    .line 1284
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$10;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
