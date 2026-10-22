.class public Lcom/conceptglobal/pmc/worker/DataSyncWorker;
.super Landroidx/work/Worker;
.source "DataSyncWorker.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 17
    iput-object p1, p0, Lcom/conceptglobal/pmc/worker/DataSyncWorker;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    .line 23
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/conceptglobal/pmc/worker/DataSyncWorker;->context:Landroid/content/Context;

    const-class v2, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    iget-object v1, p0, Lcom/conceptglobal/pmc/worker/DataSyncWorker;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
