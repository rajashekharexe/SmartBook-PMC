.class public Lcom/conceptglobal/pmc/model/DossageModel;
.super Ljava/lang/Object;
.source "DossageModel.java"


# instance fields
.field private DosagePrAcr:Ljava/lang/String;

.field private DosagePrLtr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDosagePrAcr()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DossageModel;->DosagePrAcr:Ljava/lang/String;

    return-object v0
.end method

.method public getDosagePrLtr()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/DossageModel;->DosagePrLtr:Ljava/lang/String;

    return-object v0
.end method

.method public setDosagePrAcr(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DossageModel;->DosagePrAcr:Ljava/lang/String;

    return-void
.end method

.method public setDosagePrLtr(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/DossageModel;->DosagePrLtr:Ljava/lang/String;

    return-void
.end method
