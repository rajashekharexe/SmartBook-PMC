.class Lcom/conceptglobal/pmc/fo/PictureReporting$3$1;
.super Ljava/lang/Object;
.source "PictureReporting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fo/PictureReporting$3;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting$3;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$3$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$3$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting;->checkinsertdata()V

    .line 402
    const-string v0, "PictureReporting"

    invoke-static {}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getDateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    const-string v3, "ImageSaved "

    invoke-static {v2, v3, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->location(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$3$1;->this$1:Lcom/conceptglobal/pmc/fo/PictureReporting$3;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fo/PictureReporting$3;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    new-instance v1, Lcom/conceptglobal/pmc/fo/PictureReporting$3$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fo/PictureReporting$3$1$1;-><init>(Lcom/conceptglobal/pmc/fo/PictureReporting$3$1;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
