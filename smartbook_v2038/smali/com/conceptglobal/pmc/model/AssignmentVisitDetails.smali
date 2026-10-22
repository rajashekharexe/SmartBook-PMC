.class public Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;
.super Ljava/lang/Object;
.source "AssignmentVisitDetails.java"


# instance fields
.field private ActivitySegmentId:I

.field private ActivitySegmentValue:Ljava/lang/String;

.field private Address:Ljava/lang/String;

.field private CampaignID:Ljava/lang/String;

.field private GPSTimeStamp:Ljava/lang/String;

.field private StartTimeDevice:Ljava/lang/String;

.field private StartTimeGPS:Ljava/lang/String;

.field private StopTimeDevice:Ljava/lang/String;

.field private StopTimeGPS:Ljava/lang/String;

.field private TransId:Ljava/lang/String;

.field private activityAssignmentId:I

.field private assignmentId:I

.field private createdBy:I

.field private createdDate:Ljava/lang/String;

.field private latitude:D

.field private longitude:D

.field private pdaId:I

.field private remarks:Ljava/lang/String;

.field private serverUpdatedStatus:Ljava/lang/String;

.field private updatedBy:I

.field private updatedDate:Ljava/lang/String;

.field private visitDescription:Ljava/lang/String;

.field private visitId:I


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

    .line 233
    iget v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->activityAssignmentId:I

    return v0
.end method

.method public getActivitySegmentId()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->ActivitySegmentId:I

    return v0
.end method

.method public getActivitySegmentValue()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->ActivitySegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->Address:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignmentId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->assignmentId:I

    return v0
.end method

.method public getCampaignID()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->CampaignID:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->createdBy:I

    return v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getGPSTimeStamp()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->GPSTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 201
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->longitude:D

    return-wide v0
.end method

.method public getPdaId()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->pdaId:I

    return v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUpdatedStatus()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->serverUpdatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeDevice()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->StartTimeDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTimeGPS()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->StartTimeGPS:Ljava/lang/String;

    return-object v0
.end method

.method public getStopTimeDevice()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->StopTimeDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getStopTimeGPS()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->StopTimeGPS:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->TransId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->updatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitDescription()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->visitDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->visitId:I

    return v0
.end method

.method public setActivityAssignmentId(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->activityAssignmentId:I

    return-void
.end method

.method public setActivitySegmentId(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->ActivitySegmentId:I

    return-void
.end method

.method public setActivitySegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->ActivitySegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->Address:Ljava/lang/String;

    return-void
.end method

.method public setAssignmentId(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->assignmentId:I

    return-void
.end method

.method public setCampaignID(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->CampaignID:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->createdBy:I

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->createdDate:Ljava/lang/String;

    return-void
.end method

.method public setGPSTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->GPSTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 197
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->latitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 205
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->longitude:D

    return-void
.end method

.method public setPdaId(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->pdaId:I

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->remarks:Ljava/lang/String;

    return-void
.end method

.method public setServerUpdatedStatus(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->serverUpdatedStatus:Ljava/lang/String;

    return-void
.end method

.method public setStartTimeDevice(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->StartTimeDevice:Ljava/lang/String;

    return-void
.end method

.method public setStartTimeGPS(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->StartTimeGPS:Ljava/lang/String;

    return-void
.end method

.method public setStopTimeDevice(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->StopTimeDevice:Ljava/lang/String;

    return-void
.end method

.method public setStopTimeGPS(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->StopTimeGPS:Ljava/lang/String;

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->TransId:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->updatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public setVisitDescription(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->visitDescription:Ljava/lang/String;

    return-void
.end method

.method public setVisitId(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/conceptglobal/pmc/model/AssignmentVisitDetails;->visitId:I

    return-void
.end method
