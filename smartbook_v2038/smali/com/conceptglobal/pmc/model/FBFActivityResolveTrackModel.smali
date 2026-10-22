.class public Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;
.super Ljava/lang/Object;
.source "FBFActivityResolveTrackModel.java"


# instance fields
.field private ActivityAssignmentId:Ljava/lang/String;

.field private ActivityResolveId:I

.field private CreatedBy:I

.field private CreatedDate:Ljava/lang/String;

.field private ResolveRemarks:Ljava/lang/String;

.field private ResolvedBy:Ljava/lang/String;

.field private ResolvedName:Ljava/lang/String;

.field private ResolvedStatus:Ljava/lang/String;

.field private TransId:Ljava/lang/String;

.field private UpdatedBy:I

.field private UpdatedDate:Ljava/lang/String;

.field private isSMSRequired:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityAssignmentId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ActivityAssignmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityResolveId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ActivityResolveId:I

    return v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->CreatedBy:I

    return v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSMSRequired()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->isSMSRequired:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ResolvedName:Ljava/lang/String;

    return-object v0
.end method

.method public getResolveRemarks()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ResolveRemarks:Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedBy()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ResolvedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getResolvedStatus()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ResolvedStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTransId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->TransId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->UpdatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->UpdatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setActivityAssignmentId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ActivityAssignmentId:Ljava/lang/String;

    return-void
.end method

.method public setActivityResolveId(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ActivityResolveId:I

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->CreatedBy:I

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setIsSMSRequired(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->isSMSRequired:Ljava/lang/String;

    return-void
.end method

.method public setResolveName(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ResolvedName:Ljava/lang/String;

    return-void
.end method

.method public setResolveRemarks(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ResolveRemarks:Ljava/lang/String;

    return-void
.end method

.method public setResolvedBy(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ResolvedBy:Ljava/lang/String;

    return-void
.end method

.method public setResolvedStatus(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->ResolvedStatus:Ljava/lang/String;

    return-void
.end method

.method public setTransId(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->TransId:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->UpdatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/FBFActivityResolveTrackModel;->UpdatedDate:Ljava/lang/String;

    return-void
.end method
