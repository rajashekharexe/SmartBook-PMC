.class Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4$1;
.super Ljava/lang/Object;
.source "PictureReportingExpences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->checkinsertdata()V

    .line 373
    const-string v0, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "ImageSaved "

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4$1$1;-><init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences$4$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
