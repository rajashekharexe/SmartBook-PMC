.class public Lcom/conceptglobal/pmc/model/ClearDBSMSModel;
.super Ljava/lang/Object;
.source "ClearDBSMSModel.java"


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

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ClearDBSMSModel;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public setPdaID(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ClearDBSMSModel;->PDAID:Ljava/lang/String;

    return-void
.end method
