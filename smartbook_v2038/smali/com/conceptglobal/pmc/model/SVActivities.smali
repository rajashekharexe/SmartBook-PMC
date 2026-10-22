.class public Lcom/conceptglobal/pmc/model/SVActivities;
.super Ljava/lang/Object;
.source "SVActivities.java"


# instance fields
.field public ActivityId:I

.field public AssignmentId:I

.field public FarmerId:I

.field public SVPDAId:I

.field private isMBA:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/conceptglobal/pmc/model/SVActivities;->ActivityId:I

    return v0
.end method

.method public getAssignmentId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/conceptglobal/pmc/model/SVActivities;->AssignmentId:I

    return v0
.end method

.method public getFarmerId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/conceptglobal/pmc/model/SVActivities;->FarmerId:I

    return v0
.end method

.method public getIsMBA()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/conceptglobal/pmc/model/SVActivities;->isMBA:I

    return v0
.end method

.method public getSVPDAId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/conceptglobal/pmc/model/SVActivities;->SVPDAId:I

    return v0
.end method

.method public setActivityId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/model/SVActivities;->ActivityId:I

    return-void
.end method

.method public setAssignmentId(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/conceptglobal/pmc/model/SVActivities;->AssignmentId:I

    return-void
.end method

.method public setFarmerId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/conceptglobal/pmc/model/SVActivities;->FarmerId:I

    return-void
.end method

.method public setIsMBA(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/conceptglobal/pmc/model/SVActivities;->isMBA:I

    return-void
.end method

.method public setSVPDAId(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/conceptglobal/pmc/model/SVActivities;->SVPDAId:I

    return-void
.end method
