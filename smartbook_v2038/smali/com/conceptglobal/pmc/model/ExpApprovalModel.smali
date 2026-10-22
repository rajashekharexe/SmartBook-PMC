.class public Lcom/conceptglobal/pmc/model/ExpApprovalModel;
.super Ljava/lang/Object;
.source "ExpApprovalModel.java"


# instance fields
.field private PDAID:Ljava/lang/String;

.field private Transids:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpApprovalModel;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransids()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpApprovalModel;->Transids:Ljava/lang/String;

    return-object v0
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpApprovalModel;->PDAID:Ljava/lang/String;

    return-void
.end method

.method public setTransids(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpApprovalModel;->Transids:Ljava/lang/String;

    return-void
.end method
