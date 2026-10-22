.class public Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;
.super Ljava/lang/Object;
.source "SendDetailsForFarmerDetails.java"


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
.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;->PDAID:Ljava/lang/String;

    return-void
.end method
