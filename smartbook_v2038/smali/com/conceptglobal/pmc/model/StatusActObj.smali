.class public Lcom/conceptglobal/pmc/model/StatusActObj;
.super Ljava/lang/Object;
.source "StatusActObj.java"


# instance fields
.field private acount:Ljava/lang/String;

.field private activityname:Ljava/lang/String;

.field private approvependingcount:I

.field private fcount:Ljava/lang/String;

.field private fopendingcount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcount()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->acount:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityname()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->activityname:Ljava/lang/String;

    return-object v0
.end method

.method public getApprovependingcount()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->approvependingcount:I

    return v0
.end method

.method public getFcount()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->fcount:Ljava/lang/String;

    return-object v0
.end method

.method public getFopendingcount()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->fopendingcount:I

    return v0
.end method

.method public setAcount(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->acount:Ljava/lang/String;

    return-void
.end method

.method public setActivityname(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->activityname:Ljava/lang/String;

    return-void
.end method

.method public setApprovependingcount(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->approvependingcount:I

    return-void
.end method

.method public setFcount(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->fcount:Ljava/lang/String;

    return-void
.end method

.method public setFopendingcount(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/conceptglobal/pmc/model/StatusActObj;->fopendingcount:I

    return-void
.end method
