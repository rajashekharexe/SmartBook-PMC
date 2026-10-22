.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AttributesTableViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 298
    const-string p1, "FarmerId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$002(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$1;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->access$100(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V

    :cond_0
    return-void
.end method
