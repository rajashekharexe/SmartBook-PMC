.class public Lcom/conceptglobal/pmc/model/ActivityModel;
.super Ljava/lang/Object;
.source "ActivityModel.java"


# instance fields
.field private activityId:I

.field private activityName:Ljava/lang/String;

.field private isDone:I

.field private isPlanned:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/conceptglobal/pmc/model/ActivityModel;->activityId:I

    return v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ActivityModel;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsDone()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/conceptglobal/pmc/model/ActivityModel;->isDone:I

    return v0
.end method

.method public getIsPlanned()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/conceptglobal/pmc/model/ActivityModel;->isPlanned:I

    return v0
.end method

.method public setActivityId(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/conceptglobal/pmc/model/ActivityModel;->activityId:I

    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ActivityModel;->activityName:Ljava/lang/String;

    return-void
.end method

.method public setIsDone(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/conceptglobal/pmc/model/ActivityModel;->isDone:I

    return-void
.end method

.method public setIsPlanned(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/conceptglobal/pmc/model/ActivityModel;->isPlanned:I

    return-void
.end method
