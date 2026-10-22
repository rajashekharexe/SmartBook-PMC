.class Lcom/conceptglobal/pmc/common/DBDownloader$2;
.super Ljava/lang/Object;
.source "DBDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/common/DBDownloader;->downloadDataBase(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

.field final synthetic val$completed:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/DBDownloader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/DBDownloader$2;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    iput p2, p0, Lcom/conceptglobal/pmc/common/DBDownloader$2;->val$completed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/DBDownloader$2;->this$0:Lcom/conceptglobal/pmc/common/DBDownloader;

    invoke-static {v0}, Lcom/conceptglobal/pmc/common/DBDownloader;->access$600(Lcom/conceptglobal/pmc/common/DBDownloader;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p0, Lcom/conceptglobal/pmc/common/DBDownloader$2;->val$completed:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
