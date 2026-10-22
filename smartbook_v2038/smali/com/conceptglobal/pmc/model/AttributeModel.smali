.class public Lcom/conceptglobal/pmc/model/AttributeModel;
.super Ljava/lang/Object;
.source "AttributeModel.java"


# instance fields
.field private DisplayRows:I

.field private DisplayType:Ljava/lang/String;

.field private DynamicColumn:Ljava/lang/String;

.field private DynamicCondition:Ljava/lang/String;

.field private SourceQuery:Ljava/lang/String;

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

.field private isReadOnly:I

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

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget v0, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeId:I

    iput v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeId:I

    .line 109
    iget-object v0, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeName:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeValue:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->controlType:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->controlType:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->tableName:Ljava/lang/String;

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->tableName:Ljava/lang/String;

    .line 113
    iget v0, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->detailsId:I

    iput v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->detailsId:I

    .line 114
    iget v0, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->isMandatory:I

    iput v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->isMandatory:I

    .line 115
    iget-wide v0, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->minValue:J

    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->minValue:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    if-nez v1, :cond_1

    return v0

    .line 97
    :cond_1
    check-cast p1, Lcom/conceptglobal/pmc/model/AttributeModel;

    .line 98
    iget v1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeId:I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p1, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeId:I

    if-ne v1, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public getActivityAttributeId()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->activityAttributeId:I

    return v0
.end method

.method public getAttributeDefaultValue()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDisplayField()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeDisplayField:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeId()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeId:I

    return v0
.end method

.method public getAttributeLookupKey()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeSource()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeSource:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValueField()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeValueField:Ljava/lang/String;

    return-object v0
.end method

.method public getChildLevelId()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->childLevelId:Ljava/lang/String;

    return-object v0
.end method

.method public getControlType()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->controlType:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsId()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->detailsId:I

    return v0
.end method

.method public getDisplayNameMobile()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->displayNameMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayRows()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->DisplayRows:I

    return v0
.end method

.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->DisplayType:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicColumn()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->DynamicColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicCondition()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->DynamicCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterAttribute1()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->filterAttribute1:I

    return v0
.end method

.method public getFilterAttribute2()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->filterAttribute2:I

    return v0
.end method

.method public getFilterAttribute3()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->filterAttribute3:I

    return v0
.end method

.method public getIsKeyAttribute()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->isKeyAttribute:I

    return v0
.end method

.method public getIsMandatory()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->isMandatory:I

    return v0
.end method

.method public getIsReadOnly()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->isReadOnly:I

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->maxLength:I

    return v0
.end method

.method public getMaxValue()J
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->maxValue:J

    return-wide v0
.end method

.method public getMinLength()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->minLength:I

    return v0
.end method

.method public getMinValue()J
    .locals 2

    .line 261
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->minValue:J

    return-wide v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->sequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceQuery()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->SourceQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationExpression()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->validationExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationType()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->validationType:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityAttributeId(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->activityAttributeId:I

    return-void
.end method

.method public setAttributeDefaultValue(Ljava/lang/String;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeDefaultValue:Ljava/lang/String;

    return-void
.end method

.method public setAttributeDisplayField(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeDisplayField:Ljava/lang/String;

    return-void
.end method

.method public setAttributeId(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeId:I

    return-void
.end method

.method public setAttributeLookupKey(Ljava/lang/String;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeLookupKey:Ljava/lang/String;

    return-void
.end method

.method public setAttributeName(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeName:Ljava/lang/String;

    return-void
.end method

.method public setAttributeSource(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeSource:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeValue:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValueField(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->attributeValueField:Ljava/lang/String;

    return-void
.end method

.method public setChildLevelId(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->childLevelId:Ljava/lang/String;

    return-void
.end method

.method public setControlType(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->controlType:Ljava/lang/String;

    return-void
.end method

.method public setDetailsId(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->detailsId:I

    return-void
.end method

.method public setDisplayNameMobile(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->displayNameMobile:Ljava/lang/String;

    return-void
.end method

.method public setDisplayRows(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->DisplayRows:I

    return-void
.end method

.method public setDisplayType(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->DisplayType:Ljava/lang/String;

    return-void
.end method

.method public setDynamicColumn(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->DynamicColumn:Ljava/lang/String;

    return-void
.end method

.method public setDynamicCondition(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->DynamicCondition:Ljava/lang/String;

    return-void
.end method

.method public setFilterAttribute1(I)V
    .locals 0

    .line 353
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->filterAttribute1:I

    return-void
.end method

.method public setFilterAttribute2(I)V
    .locals 0

    .line 361
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->filterAttribute2:I

    return-void
.end method

.method public setFilterAttribute3(I)V
    .locals 0

    .line 369
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->filterAttribute3:I

    return-void
.end method

.method public setIsKeyAttribute(I)V
    .locals 0

    .line 345
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->isKeyAttribute:I

    return-void
.end method

.method public setIsMandatory(I)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->isMandatory:I

    return-void
.end method

.method public setIsReadOnly(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->isReadOnly:I

    return-void
.end method

.method public setMaxLength(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->maxLength:I

    return-void
.end method

.method public setMaxValue(J)V
    .locals 0

    .line 273
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->maxValue:J

    return-void
.end method

.method public setMinLength(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->minLength:I

    return-void
.end method

.method public setMinValue(J)V
    .locals 0

    .line 265
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->minValue:J

    return-void
.end method

.method public setSequenceId(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->sequenceId:Ljava/lang/String;

    return-void
.end method

.method public setSourceQuery(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->SourceQuery:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->tableName:Ljava/lang/String;

    return-void
.end method

.method public setValidationExpression(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->validationExpression:Ljava/lang/String;

    return-void
.end method

.method public setValidationType(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttributeModel;->validationType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
