.class public Lcom/conceptglobal/pmc/model/SupervisorFOMapping;
.super Ljava/lang/Object;
.source "SupervisorFOMapping.java"


# instance fields
.field public Active:I

.field public FOName:Ljava/lang/String;

.field public FOPDAID:I

.field public FOUserID:I

.field public MappingID:I

.field public SupervisorID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActive()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->Active:I

    return v0
.end method

.method public getFOName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->FOName:Ljava/lang/String;

    return-object v0
.end method

.method public getFOUserID()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->FOUserID:I

    return v0
.end method

.method public getFopdaid()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->FOPDAID:I

    return v0
.end method

.method public getMappingID()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->MappingID:I

    return v0
.end method

.method public getSupervisorID()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->SupervisorID:I

    return v0
.end method

.method public setActive(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->Active:I

    return-void
.end method

.method public setFOName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->FOName:Ljava/lang/String;

    return-void
.end method

.method public setFOUserID(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->FOUserID:I

    return-void
.end method

.method public setFopdaid(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->FOPDAID:I

    return-void
.end method

.method public setMappingID(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->MappingID:I

    return-void
.end method

.method public setSupervisorID(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/conceptglobal/pmc/model/SupervisorFOMapping;->SupervisorID:I

    return-void
.end method
