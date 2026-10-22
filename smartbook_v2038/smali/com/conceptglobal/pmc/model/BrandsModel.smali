.class public Lcom/conceptglobal/pmc/model/BrandsModel;
.super Ljava/lang/Object;
.source "BrandsModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/conceptglobal/pmc/model/BrandsModel;",
        ">;"
    }
.end annotation


# instance fields
.field private brandId:Ljava/lang/String;

.field private brandName:Ljava/lang/String;

.field private brandSelected:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/conceptglobal/pmc/model/BrandsModel;)I
    .locals 1

    .line 57
    iget-object p1, p1, Lcom/conceptglobal/pmc/model/BrandsModel;->brandId:Ljava/lang/String;

    iget-object v0, p0, Lcom/conceptglobal/pmc/model/BrandsModel;->brandId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/model/BrandsModel;->compareTo(Lcom/conceptglobal/pmc/model/BrandsModel;)I

    move-result p1

    return p1
.end method

.method public getBrandId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/BrandsModel;->brandId:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/BrandsModel;->brandName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandSelected()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/BrandsModel;->brandSelected:Ljava/lang/String;

    return-object v0
.end method

.method public setBrandId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/BrandsModel;->brandId:Ljava/lang/String;

    return-void
.end method

.method public setBrandName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/BrandsModel;->brandName:Ljava/lang/String;

    return-void
.end method

.method public setBrandSelected(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/BrandsModel;->brandSelected:Ljava/lang/String;

    return-void
.end method
