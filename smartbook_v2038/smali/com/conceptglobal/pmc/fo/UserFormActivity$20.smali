.class Lcom/conceptglobal/pmc/fo/UserFormActivity$20;
.super Landroid/content/BroadcastReceiver;
.source "UserFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/UserFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/UserFormActivity;)V
    .locals 0

    .line 1346
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$20;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1351
    const-string p1, "deletedImage"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1352
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$20;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$000(Lcom/conceptglobal/pmc/fo/UserFormActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1353
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/UserFormActivity$20;->this$0:Lcom/conceptglobal/pmc/fo/UserFormActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fo/UserFormActivity;->access$1702(Lcom/conceptglobal/pmc/fo/UserFormActivity;Z)Z

    .line 1355
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1357
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1360
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
