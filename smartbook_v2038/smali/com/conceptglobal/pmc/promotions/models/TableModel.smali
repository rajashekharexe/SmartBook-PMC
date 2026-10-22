.class public Lcom/conceptglobal/pmc/promotions/models/TableModel;
.super Ljava/lang/Object;
.source "TableModel.java"


# instance fields
.field private FailureIds:Ljava/lang/String;

.field private SuccessIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFailureIds()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/TableModel;->FailureIds:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessIds()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/TableModel;->SuccessIds:Ljava/lang/String;

    return-object v0
.end method

.method public setFailureIds(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/TableModel;->FailureIds:Ljava/lang/String;

    return-void
.end method

.method public setSuccessIds(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/TableModel;->SuccessIds:Ljava/lang/String;

    return-void
.end method
