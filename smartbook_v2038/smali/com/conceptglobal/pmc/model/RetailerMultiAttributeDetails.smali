.class public Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;
.super Ljava/lang/Object;
.source "RetailerMultiAttributeDetails.java"


# instance fields
.field private AttributeTypeName:Ljava/lang/String;

.field private AttributeValue:Ljava/lang/String;

.field private ColumnMappingId:Ljava/lang/String;

.field private ContactID:Ljava/lang/String;

.field private CreatedBy:Ljava/lang/String;

.field private CreatedDate:Ljava/lang/String;

.field private LineId:Ljava/lang/String;

.field private PdaId:Ljava/lang/String;

.field private UpdatedBy:Ljava/lang/String;

.field private UpdatedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->LineId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->ContactID:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->ColumnMappingId:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->AttributeValue:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->AttributeTypeName:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->PdaId:Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->CreatedBy:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->CreatedDate:Ljava/lang/String;

    .line 24
    iput-object p9, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->UpdatedBy:Ljava/lang/String;

    .line 25
    iput-object p10, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->UpdatedDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttributeTypeName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->AttributeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->AttributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnMappingId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->ColumnMappingId:Ljava/lang/String;

    return-object v0
.end method

.method public getContactID()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->ContactID:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->CreatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->LineId:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->PdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->UpdatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->UpdatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributeTypeName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->AttributeTypeName:Ljava/lang/String;

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->AttributeValue:Ljava/lang/String;

    return-void
.end method

.method public setColumnMappingId(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->ColumnMappingId:Ljava/lang/String;

    return-void
.end method

.method public setContactID(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->ContactID:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->CreatedBy:Ljava/lang/String;

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setLineId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->LineId:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->PdaId:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->UpdatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/RetailerMultiAttributeDetails;->UpdatedDate:Ljava/lang/String;

    return-void
.end method
