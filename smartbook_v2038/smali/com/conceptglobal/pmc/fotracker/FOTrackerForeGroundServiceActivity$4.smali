.class Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;
.super Ljava/lang/Object;
.source "FOTrackerForeGroundServiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 335
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->access$600(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->setRefreshActionButtonState(Z)V

    .line 337
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->access$100(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;)Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const-class v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    const-string v0, "FOTrackerForeGroundServiceActivity"

    const-string v1, "callbackActivity"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    const-string v1, "receiver"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$4;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
