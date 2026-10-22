.class public Lcom/conceptglobal/pmc/model/GetSegmentationDetails;
.super Ljava/lang/Object;
.source "GetSegmentationDetails.java"


# instance fields
.field private AssignmentActivityCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private DataCount:I

.field private ExpenseAssignmentActivityCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private FAAttendanceDetailsForApproval:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PMCAttendanceModel;",
            ">;"
        }
    .end annotation
.end field

.field private FBFActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ComplaintAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private FBFActivityTrack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;",
            ">;"
        }
    .end annotation
.end field

.field private FarmerCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCollection;",
            ">;"
        }
    .end annotation
.end field

.field private FarmerCropCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropCollection;",
            ">;"
        }
    .end annotation
.end field

.field private LastVisitActivityAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;"
        }
    .end annotation
.end field

.field private SurveyActivityCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation
.end field

.field private VillageCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageCollection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssignmentActivityCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->AssignmentActivityCollection:Ljava/util/List;

    return-object v0
.end method

.method public getComplaintAssignmentActivityCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ComplaintAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FBFActivityList:Ljava/util/List;

    return-object v0
.end method

.method public getDataCount()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->DataCount:I

    return v0
.end method

.method public getExpensesAssignmentActivityDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->ExpenseAssignmentActivityCollection:Ljava/util/List;

    return-object v0
.end method

.method public getExpensesFarmerActivityCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->ExpenseAssignmentActivityCollection:Ljava/util/List;

    return-object v0
.end method

.method public getFBFActivityTrack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FBFActivityTrack:Ljava/util/List;

    return-object v0
.end method

.method public getFarmerActivityCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->AssignmentActivityCollection:Ljava/util/List;

    return-object v0
.end method

.method public getFarmerCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCollection;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FarmerCollection:Ljava/util/List;

    return-object v0
.end method

.method public getFarmerCropCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropCollection;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FarmerCropCollection:Ljava/util/List;

    return-object v0
.end method

.method public getLastVisitActivityAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->LastVisitActivityAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getPmcAttendanceModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PMCAttendanceModel;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FAAttendanceDetailsForApproval:Ljava/util/List;

    return-object v0
.end method

.method public getSurveyAssignmentActivityCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->SurveyActivityCollection:Ljava/util/List;

    return-object v0
.end method

.method public getVillageCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageCollection;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->VillageCollection:Ljava/util/List;

    return-object v0
.end method

.method public setAssignmentActivityCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->AssignmentActivityCollection:Ljava/util/List;

    return-void
.end method

.method public setComplaintAssignmentActivityCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ComplaintAssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FBFActivityList:Ljava/util/List;

    return-void
.end method

.method public setDataCount(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->DataCount:I

    return-void
.end method

.method public setExpensesAssignmentActivityDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->ExpenseAssignmentActivityCollection:Ljava/util/List;

    return-void
.end method

.method public setExpensesFarmerActivityCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/ExpensesAssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->ExpenseAssignmentActivityCollection:Ljava/util/List;

    return-void
.end method

.method public setFBFActivityTrack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FBFActivityTrack:Ljava/util/List;

    return-void
.end method

.method public setFarmerActivityCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/AssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->AssignmentActivityCollection:Ljava/util/List;

    return-void
.end method

.method public setFarmerCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCollection;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FarmerCollection:Ljava/util/List;

    return-void
.end method

.method public setFarmerCropCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropCollection;",
            ">;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FarmerCropCollection:Ljava/util/List;

    return-void
.end method

.method public setLastVisitActivityAttributes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/LastVisitModel;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->LastVisitActivityAttributes:Ljava/util/List;

    return-void
.end method

.method public setPmcAttendanceModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/PMCAttendanceModel;",
            ">;)V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->FAAttendanceDetailsForApproval:Ljava/util/List;

    return-void
.end method

.method public setSurveyAssignmentActivityCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/SurveyAssignmentActivityDetailsModel;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->SurveyActivityCollection:Ljava/util/List;

    return-void
.end method

.method public setVillageCollection(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/VillageCollection;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/GetSegmentationDetails;->VillageCollection:Ljava/util/List;

    return-void
.end method
