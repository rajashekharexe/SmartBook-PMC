.class public Lcom/conceptglobal/pmc/SyncResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SyncResultReceiver.java"


# instance fields
.field private mReceiver:Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncResultReceiver;->mReceiver:Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1, p2}, Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncResultReceiver;->mReceiver:Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;

    return-void
.end method
