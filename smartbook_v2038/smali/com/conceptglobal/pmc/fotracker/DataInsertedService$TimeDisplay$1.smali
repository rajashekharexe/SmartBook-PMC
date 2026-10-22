.class Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;
.super Ljava/lang/Object;
.source "DataInsertedService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;->this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    const-string v0, "Service is running ::::::::"

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;->this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$000(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)I

    move-result v0

    .line 133
    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;->this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$100(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 134
    const-string v2, "Tracker working :::::::::::::"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;->this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$102(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;I)I

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;->this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    iget-object v2, v2, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$100(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 137
    const-string v0, "Tracker NOT working :::::::::::::"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;->this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    const-string v1, "Unable to fetch latitude and longitude"

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$200(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;->this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    iget-object v0, v0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay$1;->this$1:Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;

    iget-object v1, v1, Lcom/conceptglobal/pmc/fotracker/DataInsertedService$TimeDisplay;->this$0:Lcom/conceptglobal/pmc/fotracker/DataInsertedService;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$000(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fotracker/DataInsertedService;->access$102(Lcom/conceptglobal/pmc/fotracker/DataInsertedService;I)I

    :cond_1
    :goto_0
    return-void
.end method
