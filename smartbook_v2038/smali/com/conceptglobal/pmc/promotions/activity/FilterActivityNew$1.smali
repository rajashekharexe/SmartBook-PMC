.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;
.super Ljava/lang/Object;
.source "FilterActivityNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->onCategoryFilterCheck()Ljava/util/ArrayList;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$100(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->clearData()V

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ClearFilers"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 102
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$1;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Filters removed"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
