.class public Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;
.super Ljava/lang/Object;
.source "LocationTrackerModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;",
        ">;"
    }
.end annotation


# instance fields
.field private Address:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private worked:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->date:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->worked:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->target:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->Address:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->date:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->worked:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->target:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->Address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->compareTo(Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;)I

    move-result p1

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->Address:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getWorked()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->worked:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->Address:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->date:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->target:Ljava/lang/String;

    return-void
.end method

.method public setWorked(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/conceptglobal/pmc/smartalerts/model/LocationTrackerModel;->worked:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
