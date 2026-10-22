.class public Lcom/conceptglobal/pmc/model/ExpensesApprovalModel;
.super Ljava/lang/Object;
.source "ExpensesApprovalModel.java"


# instance fields
.field private PDAID:Ljava/lang/String;

.field private TransIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesApprovalModel;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesApprovalModel;->TransIds:Ljava/lang/String;

    return-object v0
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesApprovalModel;->PDAID:Ljava/lang/String;

    return-void
.end method

.method public setTransId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesApprovalModel;->TransIds:Ljava/lang/String;

    return-void
.end method
