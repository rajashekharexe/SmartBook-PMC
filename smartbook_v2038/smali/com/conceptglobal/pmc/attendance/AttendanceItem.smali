.class public Lcom/conceptglobal/pmc/attendance/AttendanceItem;
.super Ljava/lang/Object;
.source "AttendanceItem.java"


# instance fields
.field private date:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private isChecked:Z

.field private nighthalt:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private transID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getNighthalt()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->nighthalt:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTransID()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->transID:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->isChecked:Z

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->date:Ljava/lang/String;

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->distance:Ljava/lang/String;

    return-void
.end method

.method public setNighthalt(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->nighthalt:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setTransID(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/AttendanceItem;->transID:Ljava/lang/String;

    return-void
.end method
