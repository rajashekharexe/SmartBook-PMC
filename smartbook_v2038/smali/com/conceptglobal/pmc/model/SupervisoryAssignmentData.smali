.class public Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;
.super Ljava/lang/Object;
.source "SupervisoryAssignmentData.java"


# instance fields
.field private ActivitySegmentId:I

.field private ActivitySegmentValue:Ljava/lang/String;

.field private activityassignmentid:Ljava/lang/String;

.field private radius:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivitySegmentId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->ActivitySegmentId:I

    return v0
.end method

.method public getActivitySegmentValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->ActivitySegmentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityassignmentid()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->activityassignmentid:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()Ljava/lang/Double;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->radius:Ljava/lang/Double;

    return-object v0
.end method

.method public setActivitySegmentId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->ActivitySegmentId:I

    return-void
.end method

.method public setActivitySegmentValue(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->ActivitySegmentValue:Ljava/lang/String;

    return-void
.end method

.method public setActivityassignmentid(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->activityassignmentid:Ljava/lang/String;

    return-void
.end method

.method public setRadius(Ljava/lang/Double;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SupervisoryAssignmentData;->radius:Ljava/lang/Double;

    return-void
.end method
