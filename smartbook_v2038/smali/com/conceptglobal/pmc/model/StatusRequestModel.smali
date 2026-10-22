.class public Lcom/conceptglobal/pmc/model/StatusRequestModel;
.super Ljava/lang/Object;
.source "StatusRequestModel.java"


# instance fields
.field private supervisorName:Ljava/lang/String;

.field private svpdaid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupervisorId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/conceptglobal/pmc/model/StatusRequestModel;->svpdaid:I

    return v0
.end method

.method public getSupervisorName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/StatusRequestModel;->supervisorName:Ljava/lang/String;

    return-object v0
.end method

.method public setSupervisorId(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/conceptglobal/pmc/model/StatusRequestModel;->svpdaid:I

    return-void
.end method

.method public setSupervisorName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/StatusRequestModel;->supervisorName:Ljava/lang/String;

    return-void
.end method
