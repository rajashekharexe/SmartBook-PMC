.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$2;
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

    .line 108
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter2;->onCategoryFilterCheck()Ljava/util/ArrayList;

    .line 112
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->access$300(Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ClearFilers"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 113
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivityNew;->finish()V

    return-void
.end method
