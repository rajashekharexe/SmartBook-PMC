.class public Lcom/conceptglobal/pmc/model/ImageDetails;
.super Ljava/lang/Object;
.source "ImageDetails.java"


# instance fields
.field private AttributeId:I

.field private Comments:Ljava/lang/String;

.field private ContentTypeId:I

.field private FarmerId:I

.field private IdTransid:J

.field private IsCompressed:Z

.field private Remarks:Ljava/lang/String;

.field private Subject:Ljava/lang/String;

.field private activityId:I

.field private assignmentId:I

.field private createdBy:Ljava/lang/String;

.field private ctreatedDate:Ljava/lang/String;

.field private eventTypeId:I

.field private imageId:J

.field private pdaID:I

.field private picturePath:Ljava/lang/String;

.field private referenceId:Ljava/lang/String;

.field private referenceType:Ljava/lang/String;

.field private updatedBy:Ljava/lang/String;

.field private updatedDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityId()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->activityId:I

    return v0
.end method

.method public getAssignmentId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->assignmentId:I

    return v0
.end method

.method public getAttributeId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->AttributeId:I

    return v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->Comments:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTypeId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->ContentTypeId:I

    return v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->createdBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCtreatedDate()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->ctreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTypeId()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->eventTypeId:I

    return v0
.end method

.method public getFarmerId()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->FarmerId:I

    return v0
.end method

.method public getIdTransid()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->IdTransid:J

    return-wide v0
.end method

.method public getImageId()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->imageId:J

    return-wide v0
.end method

.method public getPdaID()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->pdaID:I

    return v0
.end method

.method public getPicturePath()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceType()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->referenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->Remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->Subject:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->updatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->IsCompressed:Z

    return v0
.end method

.method public setActivityId(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->activityId:I

    return-void
.end method

.method public setAssignmentId(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->assignmentId:I

    return-void
.end method

.method public setAttributeId(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->AttributeId:I

    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->Comments:Ljava/lang/String;

    return-void
.end method

.method public setCompressed(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->IsCompressed:Z

    return-void
.end method

.method public setContentTypeId(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->ContentTypeId:I

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->createdBy:Ljava/lang/String;

    return-void
.end method

.method public setCtreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->ctreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setEventTypeId(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->eventTypeId:I

    return-void
.end method

.method public setFarmerId(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->FarmerId:I

    return-void
.end method

.method public setIdTransid(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->IdTransid:J

    return-void
.end method

.method public setImageId(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->imageId:J

    return-void
.end method

.method public setPdaID(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->pdaID:I

    return-void
.end method

.method public setPicturePath(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->picturePath:Ljava/lang/String;

    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->referenceId:Ljava/lang/String;

    return-void
.end method

.method public setReferenceType(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->referenceType:Ljava/lang/String;

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->Remarks:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->Subject:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->updatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ImageDetails;->updatedDate:Ljava/lang/String;

    return-void
.end method
