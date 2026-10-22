.class Lcom/conceptglobal/pmc/fo/PictureReporting$RunShowLoader;
.super Ljava/lang/Object;
.source "PictureReporting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RunShowLoader"
.end annotation


# instance fields
.field private strMsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting;Ljava/lang/String;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$RunShowLoader;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$RunShowLoader;->strMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 852
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$RunShowLoader;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    const-string v1, ""

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$RunShowLoader;->strMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$1502(Lcom/conceptglobal/pmc/fo/PictureReporting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 854
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting$RunShowLoader;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/fo/PictureReporting;->access$1502(Lcom/conceptglobal/pmc/fo/PictureReporting;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    const-string v1, "PictureReporting"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
