.class public Lcom/conceptglobal/pmc/model/LiveSMSModel;
.super Ljava/lang/Object;
.source "LiveSMSModel.java"


# instance fields
.field private PDAID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPdaID()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/LiveSMSModel;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public setPdaID(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/LiveSMSModel;->PDAID:Ljava/lang/String;

    return-void
.end method
