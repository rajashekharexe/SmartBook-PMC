.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$16;
.super Landroid/content/BroadcastReceiver;
.source "SAAttributeActivity_FBF_Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)V
    .locals 0

    .line 2450
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$16;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2454
    const-string p1, "deletedImage"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2455
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$16;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$1900(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2456
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution$16;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;->access$2002(Lcom/conceptglobal/pmc/fo/SAAttributeActivity_FBF_Resolution;Z)Z

    .line 2458
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2459
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2460
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2463
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2464
    const-string p2, "SAAttributeActivity_FBF"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
