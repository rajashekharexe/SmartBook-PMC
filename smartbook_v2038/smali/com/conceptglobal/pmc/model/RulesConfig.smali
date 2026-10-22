.class public Lcom/conceptglobal/pmc/model/RulesConfig;
.super Ljava/lang/Object;
.source "RulesConfig.java"


# instance fields
.field private attributeId:I

.field private rule:I

.field private vAttrId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/conceptglobal/pmc/model/RulesConfig;->attributeId:I

    return v0
.end method

.method public getRule()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/conceptglobal/pmc/model/RulesConfig;->rule:I

    return v0
.end method

.method public getvAttrId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/conceptglobal/pmc/model/RulesConfig;->vAttrId:I

    return v0
.end method

.method public setAttributeId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/model/RulesConfig;->attributeId:I

    return-void
.end method

.method public setRule(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/conceptglobal/pmc/model/RulesConfig;->rule:I

    return-void
.end method

.method public setvAttrId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/conceptglobal/pmc/model/RulesConfig;->vAttrId:I

    return-void
.end method
