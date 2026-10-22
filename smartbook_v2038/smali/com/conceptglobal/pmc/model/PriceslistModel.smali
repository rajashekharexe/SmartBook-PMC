.class public Lcom/conceptglobal/pmc/model/PriceslistModel;
.super Ljava/lang/Object;
.source "PriceslistModel.java"


# instance fields
.field private Table:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/TableBean;",
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

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PriceslistModel;->Table:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/TableBean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PriceslistModel;->Table:Ljava/util/List;

    return-object v0
.end method

.method public setTable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/TableBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PriceslistModel;->Table:Ljava/util/List;

    return-void
.end method
