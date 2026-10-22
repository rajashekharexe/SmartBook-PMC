.class Lcom/conceptglobal/pmc/SyncPMC$2;
.super Ljava/lang/Object;
.source "SyncPMC.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/SyncPMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/SyncPMC;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/SyncPMC;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 253
    const-string p2, "syncPMCListener"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 255
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/SyncPMC$2$1;

    invoke-direct {v0, p0, p1}, Lcom/conceptglobal/pmc/SyncPMC$2$1;-><init>(Lcom/conceptglobal/pmc/SyncPMC$2;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 347
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 351
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/common/Queries;->getGetCountofPMCImages()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 354
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 355
    iget-object p2, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p2}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$400(Lcom/conceptglobal/pmc/SyncPMC;)V

    goto/16 :goto_1

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f10025f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    goto :goto_1

    .line 364
    :cond_2
    instance-of p1, p2, Lorg/apache/http/client/ClientProtocolException;

    if-eqz p1, :cond_3

    .line 365
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    .line 366
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 367
    :cond_3
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_4

    .line 368
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10025d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    .line 369
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 371
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10025a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    .line 372
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$2;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
