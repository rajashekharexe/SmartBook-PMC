.class Lcom/conceptglobal/pmc/fo/SAAttributeActivity$22;
.super Landroid/content/BroadcastReceiver;
.source "SAAttributeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)V
    .locals 0

    .line 2828
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$22;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2832
    const-string p1, "deletedImage"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2833
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$22;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3200(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2834
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivity$22;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fo/SAAttributeActivity;->access$3302(Lcom/conceptglobal/pmc/fo/SAAttributeActivity;Z)Z

    .line 2836
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2838
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2841
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2842
    const-string p2, "SAAttributeActivity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
