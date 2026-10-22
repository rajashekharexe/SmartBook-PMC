.class Lcom/conceptglobal/pmc/fo/PictureReportingExpences$6;
.super Ljava/lang/Object;
.source "PictureReportingExpences.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$6;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 416
    const-string p1, "PictureReporting"

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$6;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->access$1300(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 418
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$6;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->access$1300(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/conceptglobal/pmc/common/Queries;->deleteImage(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQuery(Ljava/lang/String;)Z

    .line 419
    const-string v0, "Navigation"

    const-string v1, "ImageDeletde "

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 421
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$6;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->access$300(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_imageCantBeDelToast()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 422
    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$6;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->onBackPressed()V

    return-void
.end method
