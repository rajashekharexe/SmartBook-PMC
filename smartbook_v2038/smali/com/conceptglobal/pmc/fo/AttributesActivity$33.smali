.class Lcom/conceptglobal/pmc/fo/AttributesActivity$33;
.super Landroid/content/BroadcastReceiver;
.source "AttributesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V
    .locals 0

    .line 4038
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 4041
    const-string p1, "Campaigns_Farmers_Count"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4042
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5102(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I

    .line 4043
    const-string p1, "Campaigns_SartiFarmers_Count"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4044
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5202(Lcom/conceptglobal/pmc/fo/AttributesActivity;I)I

    .line 4046
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5100(Lcom/conceptglobal/pmc/fo/AttributesActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "updateCount"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$33;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5300(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    :cond_1
    return-void
.end method
