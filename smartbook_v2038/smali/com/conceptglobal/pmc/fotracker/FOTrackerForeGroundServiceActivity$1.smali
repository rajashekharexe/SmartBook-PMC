.class Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$1;
.super Ljava/lang/Object;
.source "FOTrackerForeGroundServiceActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->initServiceConnection()V
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

    .line 202
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 206
    check-cast p2, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;

    .line 207
    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService$LocalBinder;->getService()Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    move-result-object p1

    sput-object p1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 208
    sget-object p1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;->setActivityReference(Landroid/app/Activity;)V

    .line 209
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->access$002(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 214
    sput-object p1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->mService:Lcom/conceptglobal/pmc/fotracker/LocationUpdatesService;

    .line 215
    iget-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$1;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->access$002(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;Z)Z

    return-void
.end method
