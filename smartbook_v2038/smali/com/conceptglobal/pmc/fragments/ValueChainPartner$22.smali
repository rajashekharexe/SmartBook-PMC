.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$22;
.super Landroid/content/BroadcastReceiver;
.source "ValueChainPartner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 4610
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$22;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 4614
    const-string p1, "deletedImage"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4615
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$22;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3600(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4616
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$22;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$3702(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Z)Z

    .line 4618
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4619
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4620
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4623
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4624
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$22;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$1500(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
