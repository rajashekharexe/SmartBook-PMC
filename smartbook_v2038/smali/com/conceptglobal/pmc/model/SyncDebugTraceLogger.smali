.class public Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;
.super Ljava/lang/Object;
.source "SyncDebugTraceLogger.java"


# instance fields
.field private debugLogger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDebugLogger()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Logger;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;->debugLogger:Ljava/util/List;

    return-object v0
.end method

.method public setDebugLogger(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Logger;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SyncDebugTraceLogger;->debugLogger:Ljava/util/List;

    return-void
.end method
