.class Lcom/conceptglobal/pmc/fragments/AddFarmer$32;
.super Landroid/content/BroadcastReceiver;
.source "AddFarmer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 4746
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$32;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 4750
    const-string p1, "deletedImage"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4751
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$32;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6200(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4752
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$32;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6302(Lcom/conceptglobal/pmc/fragments/AddFarmer;Z)Z

    .line 4754
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4755
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4756
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4759
    const-string p2, "AddFarmer"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
