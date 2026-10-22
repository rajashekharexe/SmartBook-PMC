.class public Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;
.super Ljava/lang/Object;
.source "AttributeModel.java"


# instance fields
.field private activityAttributeId:I

.field private attributeDefaultValue:Ljava/lang/String;

.field private attributeDisplayField:Ljava/lang/String;

.field private attributeId:I

.field private attributeLookupKey:Ljava/lang/String;

.field private attributeName:Ljava/lang/String;

.field private attributeSource:Ljava/lang/String;

.field private attributeValue:Ljava/lang/String;

.field private attributeValueField:Ljava/lang/String;

.field private childLevelId:Ljava/lang/String;

.field private controlType:Ljava/lang/String;

.field private detailsId:I

.field private displayNameMobile:Ljava/lang/String;

.field private filterAttribute1:I

.field private filterAttribute2:I

.field private filterAttribute3:I

.field private isKeyAttribute:I

.field private isMandatory:I

.field private maxLength:I

.field private maxValue:J

.field private minLength:I

.field private minValue:J

.field private sequenceId:Ljava/lang/String;

.field private tableName:Ljava/lang/String;

.field private validationExpression:Ljava/lang/String;

.field private validationType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget v0, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeId:I

    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeId:I

    .line 59
    iget-object v0, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeName:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeValue:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->controlType:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->controlType:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->tableName:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->tableName:Ljava/lang/String;

    .line 63
    iget v0, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->detailsId:I

    iput v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->detailsId:I

    .line 64
    iget p1, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->isMandatory:I

    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->isMandatory:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;

    if-nez v1, :cond_1

    return v0

    .line 47
    :cond_1
    check-cast p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;

    .line 48
    iget v1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeId:I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p1, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeId:I

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public getActivityAttributeId()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->activityAttributeId:I

    return v0
.end method

.method public getAttributeDefaultValue()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDisplayField()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeDisplayField:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeId()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeId:I

    return v0
.end method

.method public getAttributeLookupKey()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeSource()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeSource:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValueField()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeValueField:Ljava/lang/String;

    return-object v0
.end method

.method public getChildLevelId()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->childLevelId:Ljava/lang/String;

    return-object v0
.end method

.method public getControlType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->controlType:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsId()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->detailsId:I

    return v0
.end method

.method public getDisplayNameMobile()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->displayNameMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterAttribute1()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->filterAttribute1:I

    return v0
.end method

.method public getFilterAttribute2()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->filterAttribute2:I

    return v0
.end method

.method public getFilterAttribute3()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->filterAttribute3:I

    return v0
.end method

.method public getIsKeyAttribute()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->isKeyAttribute:I

    return v0
.end method

.method public getIsMandatory()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->isMandatory:I

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->maxLength:I

    return v0
.end method

.method public getMaxValue()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->maxValue:J

    return-wide v0
.end method

.method public getMinLength()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->minLength:I

    return v0
.end method

.method public getMinValue()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->minValue:J

    return-wide v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->sequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationExpression()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->validationExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationType()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->validationType:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityAttributeId(I)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->activityAttributeId:I

    return-void
.end method

.method public setAttributeDefaultValue(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setAttributeDisplayField(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeDisplayField:Ljava/lang/String;

    return-void
.end method

.method public setAttributeId(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeId:I

    return-void
.end method

.method public setAttributeLookupKey(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeLookupKey:Ljava/lang/String;

    return-void
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public setAttributeSource(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeSource:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeValue:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValueField(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->attributeValueField:Ljava/lang/String;

    return-void
.end method

.method public setChildLevelId(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->childLevelId:Ljava/lang/String;

    return-void
.end method

.method public setControlType(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->controlType:Ljava/lang/String;

    return-void
.end method

.method public setDetailsId(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->detailsId:I

    return-void
.end method

.method public setDisplayNameMobile(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->displayNameMobile:Ljava/lang/String;

    return-void
.end method

.method public setFilterAttribute1(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->filterAttribute1:I

    return-void
.end method

.method public setFilterAttribute2(I)V
    .locals 0

    .line 310
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->filterAttribute2:I

    return-void
.end method

.method public setFilterAttribute3(I)V
    .locals 0

    .line 318
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->filterAttribute3:I

    return-void
.end method

.method public setIsKeyAttribute(I)V
    .locals 0

    .line 294
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->isKeyAttribute:I

    return-void
.end method

.method public setIsMandatory(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->isMandatory:I

    return-void
.end method

.method public setMaxLength(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->maxLength:I

    return-void
.end method

.method public setMaxValue(J)V
    .locals 0

    .line 222
    iput-wide p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->maxValue:J

    return-void
.end method

.method public setMinLength(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->minLength:I

    return-void
.end method

.method public setMinValue(J)V
    .locals 0

    .line 214
    iput-wide p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->minValue:J

    return-void
.end method

.method public setSequenceId(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->sequenceId:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setValidationExpression(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->validationExpression:Ljava/lang/String;

    return-void
.end method

.method public setValidationType(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/conceptglobal/pmc/fotracker/model/AttributeModel;->validationType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
