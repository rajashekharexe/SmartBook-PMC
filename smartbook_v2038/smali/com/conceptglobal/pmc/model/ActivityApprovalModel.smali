.class public Lcom/conceptglobal/pmc/model/ActivityApprovalModel;
.super Ljava/lang/Object;
.source "ActivityApprovalModel.java"


# instance fields
.field private Activityassignmentids:Ljava/lang/String;

.field private PDAID:Ljava/lang/String;

.field private Transids:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityassignmentids()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->Activityassignmentids:Ljava/lang/String;

    return-object v0
.end method

.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransids()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->Transids:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityassignmentids(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->Activityassignmentids:Ljava/lang/String;

    return-void
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->PDAID:Ljava/lang/String;

    return-void
.end method

.method public setTransids(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ActivityApprovalModel;->Transids:Ljava/lang/String;

    return-void
.end method
