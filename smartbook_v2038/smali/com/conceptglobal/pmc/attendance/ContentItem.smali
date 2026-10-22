.class public Lcom/conceptglobal/pmc/attendance/ContentItem;
.super Lcom/conceptglobal/pmc/attendance/ApproveListItem;
.source "ContentItem.java"


# instance fields
.field private attendanceItem:Lcom/conceptglobal/pmc/attendance/AttendanceItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/ApproveListItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttendanceItem()Lcom/conceptglobal/pmc/attendance/AttendanceItem;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/ContentItem;->attendanceItem:Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAttendanceItem(Lcom/conceptglobal/pmc/attendance/AttendanceItem;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/ContentItem;->attendanceItem:Lcom/conceptglobal/pmc/attendance/AttendanceItem;

    return-void
.end method
