.class public Lcom/conceptglobal/pmc/model/ProductAndDistributorData;
.super Ljava/lang/Object;
.source "ProductAndDistributorData.java"


# instance fields
.field private distributorname:Ljava/lang/String;

.field private productname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;->productname:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;->distributorname:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 14
    check-cast p1, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;

    .line 17
    iget-object v0, p1, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;->distributorname:Ljava/lang/String;

    iget-object v1, p0, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;->distributorname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;->productname:Ljava/lang/String;

    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ProductAndDistributorData;->productname:Ljava/lang/String;

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
