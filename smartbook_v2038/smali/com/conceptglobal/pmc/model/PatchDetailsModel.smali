.class public Lcom/conceptglobal/pmc/model/PatchDetailsModel;
.super Ljava/lang/Object;
.source "PatchDetailsModel.java"


# instance fields
.field private diffDays:Ljava/lang/String;

.field private patchPath:Ljava/lang/String;

.field private patchType:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiffDays()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PatchDetailsModel;->diffDays:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchPath()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PatchDetailsModel;->patchPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PatchDetailsModel;->patchType:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/PatchDetailsModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setDiffDays(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PatchDetailsModel;->diffDays:Ljava/lang/String;

    return-void
.end method

.method public setPatchPath(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PatchDetailsModel;->patchPath:Ljava/lang/String;

    return-void
.end method

.method public setPatchType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PatchDetailsModel;->patchType:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/PatchDetailsModel;->status:Ljava/lang/String;

    return-void
.end method
