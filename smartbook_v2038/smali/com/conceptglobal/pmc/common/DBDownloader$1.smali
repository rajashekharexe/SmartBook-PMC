.class Lcom/conceptglobal/pmc/common/DBDownloader$1;
.super Ljava/lang/Object;
.source "DBDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/common/DBDownloader;->dataBaseDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

.field final synthetic val$employeeId:Ljava/lang/String;

.field final synthetic val$isCompleteListener:Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

.field final synthetic val$zippedFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/DBDownloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    iput-object p2, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$zippedFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    iput-object p6, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$employeeId:Ljava/lang/String;

    iput-object p7, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$isCompleteListener:Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    iget-object v1, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$100(Lcom/conceptglobal/pmc/common/DBDownloader;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$002(Lcom/conceptglobal/pmc/common/DBDownloader;Z)Z

    .line 56
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    iget-object v1, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$zippedFileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$200(Lcom/conceptglobal/pmc/common/DBDownloader;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    invoke-static {v0}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$300(Lcom/conceptglobal/pmc/common/DBDownloader;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/DBPatchQueries;->ExecuteDBPatchQueries(Landroid/content/Context;)Z

    .line 58
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    iget-object v1, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$userDetails:Lcom/conceptglobal/pmc/model/GetUserDetailsModel;

    iget-object v2, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$employeeId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$400(Lcom/conceptglobal/pmc/common/DBDownloader;Lcom/conceptglobal/pmc/model/GetUserDetailsModel;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    invoke-static {v0}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$500(Lcom/conceptglobal/pmc/common/DBDownloader;)V

    .line 60
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    invoke-static {v0}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$300(Lcom/conceptglobal/pmc/common/DBDownloader;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$isCompleteListener:Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

    iget-object v1, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$000(Lcom/conceptglobal/pmc/common/DBDownloader;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;->isComplete(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->val$isCompleteListener:Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;

    iget-object v1, p0, Lcom/conceptglobal/pmc/common/DBDownloader$1;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$000(Lcom/conceptglobal/pmc/common/DBDownloader;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/conceptglobal/pmc/interfaces/IsCompleteListener;->isComplete(Z)V

    :goto_0
    return-void
.end method
