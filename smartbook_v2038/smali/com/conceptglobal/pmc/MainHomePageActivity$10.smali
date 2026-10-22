.class Lcom/conceptglobal/pmc/MainHomePageActivity$10;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showDialogClearLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$10;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    .line 708
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDBLog;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getClearLogQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDBLog;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 709
    iget-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$10;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Logs Cleared from Database"

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 711
    const-string v0, "MainHomePageActivity"

    invoke-static {v0, p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_0
    return-void
.end method
