.class Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$2;
.super Ljava/lang/Object;
.source "FilterActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 121
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$000(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->onCategoryFilterCheck()Ljava/util/ArrayList;

    .line 122
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->access$200(Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ClearFilers"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 123
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2$2;->this$0:Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/promotions/activity/FilterActivity2;->finish()V

    return-void
.end method
