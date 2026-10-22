.class public Lcom/conceptglobal/pmc/model/ApplyLeaveModel;
.super Ljava/lang/Object;
.source "ApplyLeaveModel.java"


# instance fields
.field private AttendanceID:I

.field private FromDate:Ljava/lang/String;

.field private LeaveType:Ljava/lang/String;

.field private NoOfDays:Ljava/lang/String;

.field private ReasonType:Ljava/lang/String;

.field private Remarks:Ljava/lang/String;

.field private ToDate:Ljava/lang/String;

.field public createdby:I

.field public createddate:Ljava/lang/String;

.field public pdaid:Ljava/lang/String;

.field public updatedby:I

.field public updateddate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttendanceID()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->AttendanceID:I

    return v0
.end method

.method public getCreatedby()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->createdby:I

    return v0
.end method

.method public getCreateddate()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getFromDate()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->FromDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaveType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->LeaveType:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfDays()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->NoOfDays:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaid()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->pdaid:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->ReasonType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->Remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getToDate()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->ToDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedby()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->updatedby:I

    return v0
.end method

.method public getUpdateddate()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->updateddate:Ljava/lang/String;

    return-object v0
.end method

.method public setAttendanceID(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->AttendanceID:I

    return-void
.end method

.method public setCreatedby(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->createdby:I

    return-void
.end method

.method public setCreateddate(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->createddate:Ljava/lang/String;

    return-void
.end method

.method public setFromDate(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->FromDate:Ljava/lang/String;

    return-void
.end method

.method public setLeaveType(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->LeaveType:Ljava/lang/String;

    return-void
.end method

.method public setNoOfDays(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->NoOfDays:Ljava/lang/String;

    return-void
.end method

.method public setPdaid(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->pdaid:Ljava/lang/String;

    return-void
.end method

.method public setReasonType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->ReasonType:Ljava/lang/String;

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->Remarks:Ljava/lang/String;

    return-void
.end method

.method public setToDate(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->ToDate:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedby(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->updatedby:I

    return-void
.end method

.method public setUpdateddate(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/ApplyLeaveModel;->updateddate:Ljava/lang/String;

    return-void
.end method
