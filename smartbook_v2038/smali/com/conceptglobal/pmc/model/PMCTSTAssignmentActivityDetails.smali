.class public Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;
.super Ljava/lang/Object;
.source "PMCTSTAssignmentActivityDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ActivityAssignmentId:I

.field private ActivityAttributeId:I

.field private ActivityExecutionSegmentId:I

.field private ActivityExecutionSegmentValue:Ljava/lang/String;

.field private ActivityMasterId:I

.field private ActivitySegmentId:I

.field private ActivitySegmentName:Ljava/lang/String;

.field private ActivitySegmentValue:Ljava/lang/String;

.field private AssignmentId:I

.field private AttributeId:I

.field private AttributeValue:Ljava/lang/String;

.field private ChildLevelId:Ljava/lang/String;

.field private ContactNumber:Ljava/lang/String;

.field private EndDate:Ljava/lang/String;

.field private ExecutionDate:Ljava/lang/String;

.field private Location1:Ljava/lang/String;

.field private Location2:Ljava/lang/String;

.field private NotDoneRemark:Ljava/lang/String;

.field private PackageId:I

.field private PackageName:Ljava/lang/String;

.field private PairId:Ljava/lang/String;

.field private PdaId:Ljava/lang/String;

.field private Person1:Ljava/lang/String;

.field private Person2:Ljava/lang/String;

.field private StartDate:Ljava/lang/String;

.field private TransId:J

.field private createdBy:I

.field private createddate:Ljava/lang/String;

.field private detailsID:I

.field private isActive:I

.field private isDone:Ljava/lang/String;

.field private isPlanned:Ljava/lang/String;

.field private isTransactionDone:I

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private serverUpdatedStatus:Ljava/lang/String;

.field private territoryId:I

.field private updatedBy:I

.field private updatedDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails$1;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails$1;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->detailsID:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityAttributeId:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityAssignmentId:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AssignmentId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentId:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentValue:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityMasterId:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AttributeId:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AttributeValue:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isPlanned:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isDone:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PdaId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->NotDoneRemark:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->TransId:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PairId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isTransactionDone:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityExecutionSegmentId:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityExecutionSegmentValue:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ExecutionDate:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->serverUpdatedStatus:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->createdBy:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->createddate:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->updatedBy:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->updatedDate:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->StartDate:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->EndDate:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Person1:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Person2:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Location1:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Location2:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ContactNumber:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ChildLevelId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PackageId:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isActive:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->latitude:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->longitude:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityAssignmentId()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityAssignmentId:I

    return v0
.end method

.method public getActivityAttributeId()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityAttributeId:I

    return v0
.end method

.method public getActivityExecutionSegmentId()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityExecutionSegmentId:I

    return v0
.end method

.method public getActivityExecutionSegmentValue()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityExecutionSegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityMasterId()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityMasterId:I

    return v0
.end method

.method public getActivitySegmentId()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentId:I

    return v0
.end method

.method public getActivitySegmentName()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivitySegmentValue()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignmentId()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AssignmentId:I

    return v0
.end method

.method public getAttributeId()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AttributeId:I

    return v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AttributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getChildLevelId()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ChildLevelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ContactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 273
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->createdBy:I

    return v0
.end method

.method public getCreateddate()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsID()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->detailsID:I

    return v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->EndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutionDate()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ExecutionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isActive:I

    return v0
.end method

.method public getIsDone()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isDone:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPlanned()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isPlanned:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTransactionDone()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isTransactionDone:I

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation1()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Location1:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation2()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Location2:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getNotdoneRemark()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->NotDoneRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()I
    .locals 1

    .line 370
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PackageId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPairId()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PairId:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson1()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Person1:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson2()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Person2:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUpdatedStatus()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->serverUpdatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->StartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTerritoryId()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->territoryId:I

    return v0
.end method

.method public getTransId()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->TransId:J

    return-wide v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->updatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityAssignmentId(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityAssignmentId:I

    return-void
.end method

.method public setActivityAttributeId(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityAttributeId:I

    return-void
.end method

.method public setActivityExecutionSegmentId(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityExecutionSegmentId:I

    return-void
.end method

.method public setActivityExecutionSegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityExecutionSegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setActivityMasterId(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityMasterId:I

    return-void
.end method

.method public setActivitySegmentId(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentId:I

    return-void
.end method

.method public setActivitySegmentName(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentName:Ljava/lang/String;

    return-void
.end method

.method public setActivitySegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setAssignmentId(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AssignmentId:I

    return-void
.end method

.method public setAttributeId(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AttributeId:I

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AttributeValue:Ljava/lang/String;

    return-void
.end method

.method public setChildLevelId(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ChildLevelId:Ljava/lang/String;

    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ContactNumber:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->createdBy:I

    return-void
.end method

.method public setCreateddate(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->createddate:Ljava/lang/String;

    return-void
.end method

.method public setDetailsID(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->detailsID:I

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->EndDate:Ljava/lang/String;

    return-void
.end method

.method public setExecutionDate(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ExecutionDate:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(I)V
    .locals 0

    .line 383
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isActive:I

    return-void
.end method

.method public setIsDone(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isDone:Ljava/lang/String;

    return-void
.end method

.method public setIsPlanned(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isPlanned:Ljava/lang/String;

    return-void
.end method

.method public setIsTransactionDone(I)V
    .locals 0

    .line 237
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isTransactionDone:I

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLocation1(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Location1:Ljava/lang/String;

    return-void
.end method

.method public setLocation2(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Location2:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setNotdoneRemark(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->NotDoneRemark:Ljava/lang/String;

    return-void
.end method

.method public setPackageId(I)V
    .locals 0

    .line 374
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PackageId:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PackageName:Ljava/lang/String;

    return-void
.end method

.method public setPairId(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PairId:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PdaId:Ljava/lang/String;

    return-void
.end method

.method public setPerson1(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Person1:Ljava/lang/String;

    return-void
.end method

.method public setPerson2(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Person2:Ljava/lang/String;

    return-void
.end method

.method public setServerUpdatedStatus(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->serverUpdatedStatus:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->StartDate:Ljava/lang/String;

    return-void
.end method

.method public setTerritoryId(I)V
    .locals 0

    .line 461
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->territoryId:I

    return-void
.end method

.method public setTransId(J)V
    .locals 0

    .line 221
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->TransId:J

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->updatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 409
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->detailsID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityAttributeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityAssignmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AssignmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivitySegmentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityMasterId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AttributeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->AttributeValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isPlanned:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isDone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PdaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->NotDoneRemark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->TransId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 424
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PairId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isTransactionDone:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityExecutionSegmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ActivityExecutionSegmentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ExecutionDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->serverUpdatedStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->createdBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->createddate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->updatedBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->updatedDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->StartDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->EndDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Person1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Person2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Location1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->Location2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ContactNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->ChildLevelId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->PackageId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->isActive:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->latitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/PMCTSTAssignmentActivityDetails;->longitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
