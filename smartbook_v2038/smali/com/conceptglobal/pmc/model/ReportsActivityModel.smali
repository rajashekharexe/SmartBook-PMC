.class public Lcom/conceptglobal/pmc/model/ReportsActivityModel;
.super Ljava/lang/Object;
.source "ReportsActivityModel.java"


# instance fields
.field private activityID:I

.field private activityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityID()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->activityID:I

    return v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityID(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->activityID:I

    return-void
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ReportsActivityModel;->activityName:Ljava/lang/String;

    return-void
.end method
