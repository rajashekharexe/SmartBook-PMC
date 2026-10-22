.class Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$1;
.super Ljava/lang/Object;
.source "FOTrackerDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->settingListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->access$000(Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;)Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/fotracker/sync/SyncDataService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerDetailsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
