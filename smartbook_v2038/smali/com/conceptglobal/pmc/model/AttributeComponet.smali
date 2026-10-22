.class public Lcom/conceptglobal/pmc/model/AttributeComponet;
.super Ljava/lang/Object;
.source "AttributeComponet.java"


# instance fields
.field attributeName:Ljava/lang/String;

.field controlType:Ljava/lang/String;

.field isActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->attributeName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->controlType:Ljava/lang/String;

    .line 59
    iput-boolean p3, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->isActive:Z

    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getControlType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->controlType:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->isActive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->isActive:Z

    return-void
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public setControlType(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->controlType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttributeComponet [attributeName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->attributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", controlType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->controlType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/model/AttributeComponet;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
