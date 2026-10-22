.class public Lcom/conceptglobal/pmc/promotions/sync/TableClass;
.super Ljava/lang/Object;
.source "TableClass.java"


# instance fields
.field private Table:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/TableModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/TableModel;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/sync/TableClass;->Table:Ljava/util/List;

    return-object v0
.end method

.method public setTable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/TableModel;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/sync/TableClass;->Table:Ljava/util/List;

    return-void
.end method
