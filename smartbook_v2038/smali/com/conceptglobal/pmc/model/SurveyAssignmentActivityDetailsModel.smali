.class public Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;
.super Ljava/lang/Object;
.source "SurveyAssignmentActivityDetailsModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;",
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

    .line 95
    new-instance v0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel$1;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel$1;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->detailsID:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityAttributeId:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityAssignmentId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AssignmentId:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentId:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentValue:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityMasterId:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AttributeId:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AttributeValue:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isPlanned:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isDone:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PdaId:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->NotDoneRemark:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->TransId:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PairId:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isTransactionDone:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityExecutionSegmentId:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityExecutionSegmentValue:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ExecutionDate:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->serverUpdatedStatus:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->createdBy:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->createddate:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->updatedBy:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->updatedDate:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->StartDate:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->EndDate:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Person1:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Person2:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Location1:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Location2:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ContactNumber:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ChildLevelId:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PackageId:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isActive:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->latitude:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->longitude:Ljava/lang/String;

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

    .line 124
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityAssignmentId:I

    return v0
.end method

.method public getActivityAttributeId()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityAttributeId:I

    return v0
.end method

.method public getActivityExecutionSegmentId()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityExecutionSegmentId:I

    return v0
.end method

.method public getActivityExecutionSegmentValue()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityExecutionSegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityMasterId()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityMasterId:I

    return v0
.end method

.method public getActivitySegmentId()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentId:I

    return v0
.end method

.method public getActivitySegmentName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivitySegmentValue()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignmentId()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AssignmentId:I

    return v0
.end method

.method public getAttributeId()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AttributeId:I

    return v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AttributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getChildLevelId()Ljava/lang/String;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ChildLevelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ContactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->createdBy:I

    return v0
.end method

.method public getCreateddate()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsID()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->detailsID:I

    return v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->EndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutionDate()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ExecutionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isActive:I

    return v0
.end method

.method public getIsDone()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isDone:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPlanned()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isPlanned:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTransactionDone()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isTransactionDone:I

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation1()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Location1:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation2()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Location2:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getNotdoneRemark()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->NotDoneRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PackageId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPairId()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PairId:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson1()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Person1:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson2()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Person2:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUpdatedStatus()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->serverUpdatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->StartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTerritoryId()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->territoryId:I

    return v0
.end method

.method public getTransId()J
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->TransId:J

    return-wide v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->updatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityAssignmentId(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityAssignmentId:I

    return-void
.end method

.method public setActivityAttributeId(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityAttributeId:I

    return-void
.end method

.method public setActivityExecutionSegmentId(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityExecutionSegmentId:I

    return-void
.end method

.method public setActivityExecutionSegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityExecutionSegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setActivityMasterId(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityMasterId:I

    return-void
.end method

.method public setActivitySegmentId(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentId:I

    return-void
.end method

.method public setActivitySegmentName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentName:Ljava/lang/String;

    return-void
.end method

.method public setActivitySegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setAssignmentId(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AssignmentId:I

    return-void
.end method

.method public setAttributeId(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AttributeId:I

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AttributeValue:Ljava/lang/String;

    return-void
.end method

.method public setChildLevelId(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ChildLevelId:Ljava/lang/String;

    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ContactNumber:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 280
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->createdBy:I

    return-void
.end method

.method public setCreateddate(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->createddate:Ljava/lang/String;

    return-void
.end method

.method public setDetailsID(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->detailsID:I

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->EndDate:Ljava/lang/String;

    return-void
.end method

.method public setExecutionDate(Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ExecutionDate:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isActive:I

    return-void
.end method

.method public setIsDone(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isDone:Ljava/lang/String;

    return-void
.end method

.method public setIsPlanned(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isPlanned:Ljava/lang/String;

    return-void
.end method

.method public setIsTransactionDone(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isTransactionDone:I

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLocation1(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Location1:Ljava/lang/String;

    return-void
.end method

.method public setLocation2(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Location2:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setNotdoneRemark(Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->NotDoneRemark:Ljava/lang/String;

    return-void
.end method

.method public setPackageId(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PackageId:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PackageName:Ljava/lang/String;

    return-void
.end method

.method public setPairId(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PairId:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PdaId:Ljava/lang/String;

    return-void
.end method

.method public setPerson1(Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Person1:Ljava/lang/String;

    return-void
.end method

.method public setPerson2(Ljava/lang/String;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Person2:Ljava/lang/String;

    return-void
.end method

.method public setServerUpdatedStatus(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->serverUpdatedStatus:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->StartDate:Ljava/lang/String;

    return-void
.end method

.method public setTerritoryId(I)V
    .locals 0

    .line 464
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->territoryId:I

    return-void
.end method

.method public setTransId(J)V
    .locals 0

    .line 224
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->TransId:J

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 296
    iput p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->updatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 412
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->detailsID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityAttributeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityAssignmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AssignmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivitySegmentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityMasterId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AttributeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->AttributeValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isPlanned:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isDone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PdaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->NotDoneRemark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->TransId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 427
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PairId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isTransactionDone:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityExecutionSegmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ActivityExecutionSegmentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ExecutionDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->serverUpdatedStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->createdBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->createddate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->updatedBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->updatedDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->StartDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->EndDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Person1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 440
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Person2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Location1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 442
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->Location2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ContactNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 444
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->ChildLevelId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->PackageId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->isActive:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->latitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;->longitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
