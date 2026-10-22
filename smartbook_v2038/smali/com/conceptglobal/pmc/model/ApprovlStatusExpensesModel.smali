.class public Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;
.super Ljava/lang/Object;
.source "ApprovlStatusExpensesModel.java"


# instance fields
.field private ActivityAssignmentidApprovedBy:Ljava/lang/String;

.field private ApprovedBy:I

.field private ParentActivityAssignmentID:I

.field private TransId:Ljava/lang/String;

.field private activityassignmentid:I

.field private isApproved:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityAssignmentidApprovedBy()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->ActivityAssignmentidApprovedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityassignmentid()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->activityassignmentid:I

    return v0
.end method

.method public getApprovedBy()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->ApprovedBy:I

    return v0
.end method

.method public getIsApproved()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->isApproved:I

    return v0
.end method

.method public getParentActivityAssignmentID()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->ParentActivityAssignmentID:I

    return v0
.end method

.method public getTransId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->TransId:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityAssignmentidApprovedBy(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->ActivityAssignmentidApprovedBy:Ljava/lang/String;

    return-void
.end method

.method public setActivityassignmentid(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->activityassignmentid:I

    return-void
.end method

.method public setApprovedBy(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->ApprovedBy:I

    return-void
.end method

.method public setIsApproved(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->isApproved:I

    return-void
.end method

.method public setParentActivityAssignmentID(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->ParentActivityAssignmentID:I

    return-void
.end method

.method public setTransId(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApprovlStatusExpensesModel;->TransId:Ljava/lang/String;

    return-void
.end method
