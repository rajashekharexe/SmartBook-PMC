.class Lcom/conceptglobal/pmc/MainHomePageActivity$12;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showDialogLogout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$logoutOrDBdelete:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 800
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->val$logoutOrDBdelete:Ljava/lang/String;

    iput-object p3, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 802
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->val$logoutOrDBdelete:Ljava/lang/String;

    const-string p2, "DBDelete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 804
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$100(Lcom/conceptglobal/pmc/MainHomePageActivity;)Landroid/content/Context;

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

    .line 805
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->val$ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteCache(Landroid/content/Context;)V

    .line 806
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->finish()V

    goto :goto_1

    .line 808
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->val$ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteCache(Landroid/content/Context;)V

    .line 810
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/Queries;->updateLoginTimeClear()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 812
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 813
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Update login time clear"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainHomePageActivity"

    invoke-static {v1, p1, p2, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$12;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/ExitActivity;->exitApplicationAnRemoveFromRecent(Landroid/content/Context;)V

    :goto_1
    return-void
.end method
