.class public Lcom/conceptglobal/pmc/promotions/models/AckPromotion;
.super Ljava/lang/Object;
.source "AckPromotion.java"


# instance fields
.field private jsonObject:Ljava/lang/String;

.field private pdaId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJsonObject()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/AckPromotion;->jsonObject:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/AckPromotion;->pdaId:Ljava/lang/String;

    return-object v0
.end method

.method public setJsonObject(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/AckPromotion;->jsonObject:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/AckPromotion;->pdaId:Ljava/lang/String;

    return-void
.end method
