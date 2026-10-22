.class Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$8;
.super Ljava/lang/Object;
.source "PictureReporting_Expenses.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->hideLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1500(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1500(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1500(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$8;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$1502(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 922
    const-string v1, "PictureReporting"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
