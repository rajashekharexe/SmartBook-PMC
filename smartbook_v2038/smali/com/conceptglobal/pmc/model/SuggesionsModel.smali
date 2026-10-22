.class public Lcom/conceptglobal/pmc/model/SuggesionsModel;
.super Ljava/lang/Object;
.source "SuggesionsModel.java"


# instance fields
.field private attributeId:Ljava/lang/String;

.field private attributeName:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;

.field private suggestedValueIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributeId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuggesionsModel;->attributeId:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuggesionsModel;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuggesionsModel;->attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestedValueIds()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SuggesionsModel;->suggestedValueIds:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuggesionsModel;->attributeId:Ljava/lang/String;

    return-void
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuggesionsModel;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuggesionsModel;->attributeValue:Ljava/lang/String;

    return-void
.end method

.method public setSuggestedValueIds(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SuggesionsModel;->suggestedValueIds:Ljava/lang/String;

    return-void
.end method
