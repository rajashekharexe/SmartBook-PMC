.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity$35;
.super Landroid/content/BroadcastReceiver;
.source "FarmerFormActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)V
    .locals 0

    .line 3841
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$35;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 3847
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$35;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    const-string v0, "IsDisplayOthersTab"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$902(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;Z)Z

    .line 3848
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$35;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$900(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3849
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$35;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)V

    goto :goto_0

    .line 3852
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity$35;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity;->access$1000(Lcom/conceptglobal/pmc/fo/FarmerFormActivity;I)V

    :goto_0
    return-void
.end method
