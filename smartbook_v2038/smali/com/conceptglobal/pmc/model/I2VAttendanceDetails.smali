.class public Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;
.super Ljava/lang/Object;
.source "I2VAttendanceDetails.java"


# instance fields
.field private AttendanceID:I

.field private CreatedBy:I

.field private CreatedDate:Ljava/lang/String;

.field private Date:Ljava/lang/String;

.field private DistanceTravelled:I

.field private FOName:Ljava/lang/String;

.field private NightHalt:Ljava/lang/String;

.field private UpdatedBy:I

.field private UpdatedDate:Ljava/lang/String;


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

    .line 16
    iget v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->AttendanceID:I

    return v0
.end method

.method public getCreatedBy()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->CreatedBy:I

    return v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->CreatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->Date:Ljava/lang/String;

    return-object v0
.end method

.method public getDistanceTravelled()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->DistanceTravelled:I

    return v0
.end method

.method public getFOName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->FOName:Ljava/lang/String;

    return-object v0
.end method

.method public getNightHalt()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->NightHalt:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedBy()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->UpdatedBy:I

    return v0
.end method

.method public getUpdatedDate()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->UpdatedDate:Ljava/lang/String;

    return-object v0
.end method

.method public setAttendanceID(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->AttendanceID:I

    return-void
.end method

.method public setCreatedBy(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->CreatedBy:I

    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->CreatedDate:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->Date:Ljava/lang/String;

    return-void
.end method

.method public setDistanceTravelled(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->DistanceTravelled:I

    return-void
.end method

.method public setFOName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->FOName:Ljava/lang/String;

    return-void
.end method

.method public setNightHalt(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->NightHalt:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedBy(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->UpdatedBy:I

    return-void
.end method

.method public setUpdatedDate(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/I2VAttendanceDetails;->UpdatedDate:Ljava/lang/String;

    return-void
.end method
