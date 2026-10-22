.class public Lcom/conceptglobal/pmc/promotions/models/SendAckPromotionModel;
.super Ljava/lang/Object;
.source "SendAckPromotionModel.java"


# instance fields
.field private AckPromotion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/AckPromotion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAckPromotion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/AckPromotion;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/models/SendAckPromotionModel;->AckPromotion:Ljava/util/List;

    return-object v0
.end method

.method public setAckPromotion(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/promotions/models/AckPromotion;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/models/SendAckPromotionModel;->AckPromotion:Ljava/util/List;

    return-void
.end method
