.class public Lcom/conceptglobal/pmc/model/ComplaintInfoModel;
.super Ljava/lang/Object;
.source "ComplaintInfoModel.java"


# instance fields
.field ActivityAssignmentId:I

.field CreatedBy:Ljava/lang/String;

.field CreatedDate:Ljava/lang/String;

.field IsExpired:I

.field IsSMSRequired:I

.field PdaId:I

.field ResolveStatus:I

.field ResolverComments:Ljava/lang/String;

.field TransId:J

.field UpdatedBy:Ljava/lang/String;

.field UpdatedDate:Ljava/lang/String;

.field UserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityAssignmentId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->ActivityAssignmentId:I

    return v0
.end method

.method public getCreatedBy()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->CreatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExpired()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->IsExpired:I

    return v0
.end method

.method public getIsSMSRequired()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->IsSMSRequired:I

    return v0
.end method

.method public getPdaId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->PdaId:I

    return v0
.end method

.method public getResolveStatus()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->ResolveStatus:I

    return v0
.end method

.method public getResolverComments()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->ResolverComments:Ljava/lang/String;

    return-object v0
.end method

.method public getTransId()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->TransId:J

    return-wide v0
.end method

.method public getUpdatedBy()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->UpdatedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->UpdatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->UserId:I

    return v0
.end method

.method public setActivityAssignmentId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->ActivityAssignmentId:I

    return-void
.end method

.method public setCreatedBy(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->CreatedBy:Ljava/lang/String;

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setIsExpired(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->IsExpired:I

    return-void
.end method

.method public setIsSMSRequired(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->IsSMSRequired:I

    return-void
.end method

.method public setPdaId(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->PdaId:I

    return-void
.end method

.method public setResolveStatus(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->ResolveStatus:I

    return-void
.end method

.method public setResolverComments(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->ResolverComments:Ljava/lang/String;

    return-void
.end method

.method public setTransId(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->TransId:J

    return-void
.end method

.method public setUpdatedBy(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->UpdatedBy:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->UpdatedDate:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/conceptglobal/pmc/model/ComplaintInfoModel;->UserId:I

    return-void
.end method
