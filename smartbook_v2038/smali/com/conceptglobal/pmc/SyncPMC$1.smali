.class Lcom/conceptglobal/pmc/SyncPMC$1;
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

    .line 191
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "syncPMCListener"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    .line 201
    const-string p2, "["

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 202
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 206
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 208
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getUpdateImageActDetails(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 210
    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/SyncPMC;->startActivity(Landroid/content/Intent;)V

    .line 215
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/SyncPMC;->finish()V

    goto/16 :goto_2

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f10025f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    goto :goto_2

    .line 220
    :cond_2
    instance-of p1, p2, Lorg/apache/http/client/ClientProtocolException;

    if-eqz p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    .line 222
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 223
    :cond_3
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_4

    .line 224
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10025d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    .line 225
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 227
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10025a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/conceptglobal/pmc/SyncPMC;->access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V

    .line 228
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC$1;->this$0:Lcom/conceptglobal/pmc/SyncPMC;

    invoke-static {p1}, Lcom/conceptglobal/pmc/SyncPMC;->access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
