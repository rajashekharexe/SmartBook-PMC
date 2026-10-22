.class public Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;
.super Ljava/lang/Object;
.source "NotifyAssignDisplayModel.java"


# instance fields
.field private ActivityMasterName:Ljava/lang/String;

.field private activityAssignmentId:Ljava/lang/String;

.field private activitySegmentName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityAssignmentId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;->activityAssignmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityMasterName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;->ActivityMasterName:Ljava/lang/String;

    return-object v0
.end method

.method public getActivitySegmentName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;->activitySegmentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityAssignmentId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;->activityAssignmentId:Ljava/lang/String;

    return-void
.end method

.method public setActivityMasterName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;->ActivityMasterName:Ljava/lang/String;

    return-void
.end method

.method public setActivitySegmentName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;->activitySegmentName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotifyAssignDisplayModel;->packageName:Ljava/lang/String;

    return-void
.end method
