.class public Lcom/conceptglobal/pmc/promotions/models/Promotion;
.super Ljava/lang/Object;
.source "Promotion.java"


# instance fields
.field private lastDate:Ljava/lang/String;

.field private pdaId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastDate()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/Promotion;->lastDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/Promotion;->pdaId:Ljava/lang/String;

    return-object v0
.end method

.method public setLastDate(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/Promotion;->lastDate:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/Promotion;->pdaId:Ljava/lang/String;

    return-void
.end method
