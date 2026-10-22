.class public Lcom/conceptglobal/pmc/model/AttendanceModel;
.super Ljava/lang/Object;
.source "AttendanceModel.java"


# instance fields
.field private AttendanceID:I

.field public EndLatitude:Ljava/lang/String;

.field public EndLocationAddress:Ljava/lang/String;

.field public EndLocationTime:Ljava/lang/String;

.field public EndLongitude:Ljava/lang/String;

.field private FromDate:Ljava/lang/String;

.field private LeaveType:Ljava/lang/String;

.field private NoOfDays:Ljava/lang/String;

.field private ReasonType:Ljava/lang/String;

.field private Remarks:Ljava/lang/String;

.field public StartLatitude:Ljava/lang/String;

.field public StartLocationAddress:Ljava/lang/String;

.field public StartLocationTime:Ljava/lang/String;

.field public StartLongitude:Ljava/lang/String;

.field private ToDate:Ljava/lang/String;

.field public TransId:Ljava/lang/String;

.field public createdby:I

.field public createddate:Ljava/lang/String;

.field public endKM:I

.field public pdaid:Ljava/lang/String;

.field public startKM:I

.field public status:I

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

    .line 166
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->AttendanceID:I

    return v0
.end method

.method public getCreatedby()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->createdby:I

    return v0
.end method

.method public getCreateddate()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->createddate:Ljava/lang/String;

    return-object v0
.end method

.method public getEndKM()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->endKM:I

    return v0
.end method

.method public getEndLatitude()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->EndLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getEndLocationAddress()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->EndLocationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEndLocationTime()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->EndLocationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEndLongitude()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->EndLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getFromDate()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->FromDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaveType()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->LeaveType:Ljava/lang/String;

    return-object v0
.end method

.method public getNoOfDays()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->NoOfDays:Ljava/lang/String;

    return-object v0
.end method

.method public getPdaid()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->pdaid:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonType()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->ReasonType:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarks()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->Remarks:Ljava/lang/String;

    return-object v0
.end method

.method public getStartKM()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->startKM:I

    return v0
.end method

.method public getStartLatitude()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->StartLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getStartLocationAddress()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->StartLocationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStartLocationTime()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->StartLocationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartLongitude()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->StartLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->status:I

    return v0
.end method

.method public getToDate()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->ToDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTransId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->TransId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedby()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->updatedby:I

    return v0
.end method

.method public getUpdateddate()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->updateddate:Ljava/lang/String;

    return-object v0
.end method

.method public setAttendanceID(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->AttendanceID:I

    return-void
.end method

.method public setCreatedby(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->createdby:I

    return-void
.end method

.method public setCreateddate(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->createddate:Ljava/lang/String;

    return-void
.end method

.method public setEndKM(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->endKM:I

    return-void
.end method

.method public setEndLatitude(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->EndLatitude:Ljava/lang/String;

    return-void
.end method

.method public setEndLocationAddress(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->EndLocationAddress:Ljava/lang/String;

    return-void
.end method

.method public setEndLocationTime(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->EndLocationTime:Ljava/lang/String;

    return-void
.end method

.method public setEndLongitude(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->EndLongitude:Ljava/lang/String;

    return-void
.end method

.method public setFromDate(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->FromDate:Ljava/lang/String;

    return-void
.end method

.method public setLeaveType(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->LeaveType:Ljava/lang/String;

    return-void
.end method

.method public setNoOfDays(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->NoOfDays:Ljava/lang/String;

    return-void
.end method

.method public setPdaid(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->pdaid:Ljava/lang/String;

    return-void
.end method

.method public setReasonType(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->ReasonType:Ljava/lang/String;

    return-void
.end method

.method public setRemarks(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->Remarks:Ljava/lang/String;

    return-void
.end method

.method public setStartKM(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->startKM:I

    return-void
.end method

.method public setStartLatitude(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->StartLatitude:Ljava/lang/String;

    return-void
.end method

.method public setStartLocationAddress(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->StartLocationAddress:Ljava/lang/String;

    return-void
.end method

.method public setStartLocationTime(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->StartLocationTime:Ljava/lang/String;

    return-void
.end method

.method public setStartLongitude(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->StartLongitude:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->status:I

    return-void
.end method

.method public setToDate(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->ToDate:Ljava/lang/String;

    return-void
.end method

.method public setTransId(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->TransId:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedby(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->updatedby:I

    return-void
.end method

.method public setUpdateddate(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/AttendanceModel;->updateddate:Ljava/lang/String;

    return-void
.end method
