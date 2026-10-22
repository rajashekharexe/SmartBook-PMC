.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;
.super Landroid/content/BroadcastReceiver;
.source "HomePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)V
    .locals 0

    .line 2253
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2257
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    const-string v0, "tickerpos"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickerPos:I

    .line 2260
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget p2, p2, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickerPos:I

    if-ne p1, p2, :cond_0

    .line 2261
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iput v1, p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickerPos:I

    .line 2262
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object p2, p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tableBeansHashmap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget v1, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickerPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setTickerData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2265
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object p2, p1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tableBeansHashmap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$2600(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$19;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget v1, v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->tickerPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->setTickerData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2270
    const-string p2, "HomePageFragment"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
