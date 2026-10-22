.class public Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;
.super Ljava/lang/Object;
.source "ExpensesAssignmentActivityDetailsModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ActivityAssignmentId:I

.field private ActivityAttributeId:I

.field private ActivityCode:Ljava/lang/String;

.field private ActivityExecutionSegmentId:I

.field private ActivityExecutionSegmentValue:Ljava/lang/String;

.field private ActivityMasterId:I

.field private ActivitySegmentId:I

.field private ActivitySegmentName:Ljava/lang/String;

.field private ActivitySegmentValue:Ljava/lang/String;

.field private ApprovalStatus:I

.field private ApprovedBy:I

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

.field private ParentActivityAssignmentID:Ljava/lang/String;

.field private ParentActivityTransID:Ljava/lang/String;

.field private PdaId:Ljava/lang/String;

.field private Person1:Ljava/lang/String;

.field private Person2:Ljava/lang/String;

.field private StartDate:Ljava/lang/String;

.field private TransId:J

.field private createdBy:I

.field private createddate:Ljava/lang/String;

.field private detailsID:I

.field private isActive:I

.field private isApproved:I

.field private isDone:Ljava/lang/String;

.field private isExpensesSubmited:I

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

    .line 106
    new-instance v0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel$1;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel$1;-><init>()V

    sput-object v0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->detailsID:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityAttributeId:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityAssignmentId:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AssignmentId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentId:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentValue:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityMasterId:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AttributeId:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AttributeValue:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isPlanned:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isDone:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PdaId:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->NotDoneRemark:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->TransId:J

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PairId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isTransactionDone:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityExecutionSegmentId:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityExecutionSegmentValue:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ExecutionDate:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->serverUpdatedStatus:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->createdBy:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->createddate:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->updatedBy:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->updatedDate:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->StartDate:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->EndDate:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Person1:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Person2:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Location1:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Location2:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ContactNumber:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ChildLevelId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PackageId:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isActive:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isExpensesSubmited:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->latitude:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->longitude:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityCode:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ParentActivityAssignmentID:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ParentActivityTransID:Ljava/lang/String;

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

    .line 151
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityAssignmentId:I

    return v0
.end method

.method public getActivityAttributeId()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityAttributeId:I

    return v0
.end method

.method public getActivityCode()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityExecutionSegmentId()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityExecutionSegmentId:I

    return v0
.end method

.method public getActivityExecutionSegmentValue()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityExecutionSegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityMasterId()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityMasterId:I

    return v0
.end method

.method public getActivitySegmentId()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentId:I

    return v0
.end method

.method public getActivitySegmentName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivitySegmentValue()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getApprovalStatus()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ApprovalStatus:I

    return v0
.end method

.method public getApprovedBy()I
    .locals 1

    .line 523
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ApprovedBy:I

    return v0
.end method

.method public getAssignmentId()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AssignmentId:I

    return v0
.end method

.method public getAttributeId()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AttributeId:I

    return v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AttributeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getChildLevelId()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ChildLevelId:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ContactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->createdBy:I

    return v0
.end method

.method public getCreateddate()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsID()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->detailsID:I

    return v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->EndDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutionDate()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ExecutionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isActive:I

    return v0
.end method

.method public getIsApproved()I
    .locals 1

    .line 531
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isApproved:I

    return v0
.end method

.method public getIsDone()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isDone:Ljava/lang/String;

    return-object v0
.end method

.method public getIsExpensesSubmited()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isExpensesSubmited:I

    return v0
.end method

.method public getIsPlanned()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isPlanned:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTransactionDone()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isTransactionDone:I

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation1()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Location1:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation2()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Location2:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getNotdoneRemark()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->NotDoneRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageId()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PackageId:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPairId()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PairId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentActivityAssignmentID()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ParentActivityAssignmentID:Ljava/lang/String;

    return-object v0
.end method

.method public getParentActivityTransID()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ParentActivityTransID:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaId()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PdaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson1()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Person1:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson2()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Person2:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUpdatedStatus()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->serverUpdatedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->StartDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTerritoryId()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->territoryId:I

    return v0
.end method

.method public getTransId()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->TransId:J

    return-wide v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->updatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->updatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityAssignmentId(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityAssignmentId:I

    return-void
.end method

.method public setActivityAttributeId(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityAttributeId:I

    return-void
.end method

.method public setActivityCode(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityCode:Ljava/lang/String;

    return-void
.end method

.method public setActivityExecutionSegmentId(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityExecutionSegmentId:I

    return-void
.end method

.method public setActivityExecutionSegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityExecutionSegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setActivityMasterId(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityMasterId:I

    return-void
.end method

.method public setActivitySegmentId(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentId:I

    return-void
.end method

.method public setActivitySegmentName(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentName:Ljava/lang/String;

    return-void
.end method

.method public setActivitySegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setApprovalStatus(I)V
    .locals 0

    .line 519
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ApprovalStatus:I

    return-void
.end method

.method public setApprovedBy(I)V
    .locals 0

    .line 527
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ApprovedBy:I

    return-void
.end method

.method public setAssignmentId(I)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AssignmentId:I

    return-void
.end method

.method public setAttributeId(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AttributeId:I

    return-void
.end method

.method public setAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AttributeValue:Ljava/lang/String;

    return-void
.end method

.method public setChildLevelId(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ChildLevelId:Ljava/lang/String;

    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ContactNumber:Ljava/lang/String;

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->createdBy:I

    return-void
.end method

.method public setCreateddate(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->createddate:Ljava/lang/String;

    return-void
.end method

.method public setDetailsID(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->detailsID:I

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->EndDate:Ljava/lang/String;

    return-void
.end method

.method public setExecutionDate(Ljava/lang/String;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ExecutionDate:Ljava/lang/String;

    return-void
.end method

.method public setIsActive(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isActive:I

    return-void
.end method

.method public setIsApproved(I)V
    .locals 0

    .line 535
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isApproved:I

    return-void
.end method

.method public setIsDone(Ljava/lang/String;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isDone:Ljava/lang/String;

    return-void
.end method

.method public setIsExpensesSubmited(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isExpensesSubmited:I

    return-void
.end method

.method public setIsPlanned(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isPlanned:Ljava/lang/String;

    return-void
.end method

.method public setIsTransactionDone(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isTransactionDone:I

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLocation1(Ljava/lang/String;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Location1:Ljava/lang/String;

    return-void
.end method

.method public setLocation2(Ljava/lang/String;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Location2:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setNotdoneRemark(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->NotDoneRemark:Ljava/lang/String;

    return-void
.end method

.method public setPackageId(I)V
    .locals 0

    .line 404
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PackageId:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PackageName:Ljava/lang/String;

    return-void
.end method

.method public setPairId(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PairId:Ljava/lang/String;

    return-void
.end method

.method public setParentActivityAssignmentID(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ParentActivityAssignmentID:Ljava/lang/String;

    return-void
.end method

.method public setParentActivityTransID(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ParentActivityTransID:Ljava/lang/String;

    return-void
.end method

.method public setPdaId(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PdaId:Ljava/lang/String;

    return-void
.end method

.method public setPerson1(Ljava/lang/String;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Person1:Ljava/lang/String;

    return-void
.end method

.method public setPerson2(Ljava/lang/String;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Person2:Ljava/lang/String;

    return-void
.end method

.method public setServerUpdatedStatus(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->serverUpdatedStatus:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->StartDate:Ljava/lang/String;

    return-void
.end method

.method public setTerritoryId(I)V
    .locals 0

    .line 495
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->territoryId:I

    return-void
.end method

.method public setTransId(J)V
    .locals 0

    .line 251
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->TransId:J

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 323
    iput p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->updatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->updatedDate:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 439
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->detailsID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityAttributeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityAssignmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AssignmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivitySegmentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityMasterId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AttributeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->AttributeValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 449
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isPlanned:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isDone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PdaId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 452
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->NotDoneRemark:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->TransId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PairId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isTransactionDone:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityExecutionSegmentId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityExecutionSegmentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ExecutionDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->serverUpdatedStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->createdBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->createddate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->updatedBy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->updatedDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->StartDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->EndDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Person1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Person2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Location1:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->Location2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ContactNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ChildLevelId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->PackageId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isActive:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->isExpensesSubmited:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->latitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->longitude:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ActivityCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ParentActivityAssignmentID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object p2, p0, Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;->ParentActivityTransID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
