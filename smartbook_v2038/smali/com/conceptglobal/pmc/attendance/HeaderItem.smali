.class public Lcom/conceptglobal/pmc/attendance/HeaderItem;
.super Lcom/conceptglobal/pmc/attendance/ApproveListItem;
.source "HeaderItem.java"


# instance fields
.field private header:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/conceptglobal/pmc/attendance/ApproveListItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/conceptglobal/pmc/attendance/HeaderItem;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/conceptglobal/pmc/attendance/HeaderItem;->header:Ljava/lang/String;

    return-void
.end method
