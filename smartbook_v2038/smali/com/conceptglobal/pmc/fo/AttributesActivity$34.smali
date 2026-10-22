.class Lcom/conceptglobal/pmc/fo/AttributesActivity$34;
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

    .line 4051
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$34;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 4054
    const-string p1, "FarmerId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4055
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$34;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$2202(Lcom/conceptglobal/pmc/fo/AttributesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4056
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$34;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5400(Lcom/conceptglobal/pmc/fo/AttributesActivity;)V

    :cond_0
    return-void
.end method
