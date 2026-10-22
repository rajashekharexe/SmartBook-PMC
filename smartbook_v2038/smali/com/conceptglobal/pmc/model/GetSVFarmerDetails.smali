.class public Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;
.super Ljava/lang/Object;
.source "GetSVFarmerDetails.java"


# instance fields
.field private pdaid:Ljava/lang/String;

.field private usertype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPdaid()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->pdaid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsertype()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->usertype:Ljava/lang/String;

    return-object v0
.end method

.method public setPdaid(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->pdaid:Ljava/lang/String;

    return-void
.end method

.method public setUsertype(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSVFarmerDetails;->usertype:Ljava/lang/String;

    return-void
.end method
