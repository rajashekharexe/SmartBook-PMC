.class public Lcom/conceptglobal/pmc/model/SendLog4NetModel;
.super Ljava/lang/Object;
.source "SendLog4NetModel.java"


# instance fields
.field private log4net:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Log4Net;",
            ">;"
        }
    .end annotation
.end field

.field private syncErrorLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SyncErrorLogModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SendLog4NetModel;->log4net:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SendLog4NetModel;->syncErrorLog:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLog4net()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Log4Net;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendLog4NetModel;->log4net:Ljava/util/List;

    return-object v0
.end method

.method public getSyncErrorLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SyncErrorLogModel;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendLog4NetModel;->syncErrorLog:Ljava/util/List;

    return-object v0
.end method

.method public setLog4net(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Log4Net;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendLog4NetModel;->log4net:Ljava/util/List;

    return-void
.end method

.method public setSyncErrorLog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SyncErrorLogModel;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendLog4NetModel;->syncErrorLog:Ljava/util/List;

    return-void
.end method
