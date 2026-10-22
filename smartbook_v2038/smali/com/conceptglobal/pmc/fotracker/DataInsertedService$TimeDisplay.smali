.class Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;
.super Ljava/util/TimerTask;
.source "DataInsertedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fotracker/DataInsertedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeDisplay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$300(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;-><init>(Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
