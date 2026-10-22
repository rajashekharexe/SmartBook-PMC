.class Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;
.super Ljava/util/TimerTask;
.source "FOTrackerForeGroundServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field startTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;Ljava/lang/String;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1080
    iput-object p2, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;->startTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;->this$0:Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask$1;-><init>(Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity$MyTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/fotracker/FOTrackerForeGroundServiceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
