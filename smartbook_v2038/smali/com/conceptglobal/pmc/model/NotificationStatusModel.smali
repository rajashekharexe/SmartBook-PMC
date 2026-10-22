.class public Lcom/conceptglobal/pmc/model/NotificationStatusModel;
.super Ljava/lang/Object;
.source "NotificationStatusModel.java"


# instance fields
.field private PDAID:Ljava/lang/String;

.field private isEnabled:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsEnabled()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->isEnabled:I

    return v0
.end method

.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public setIsEnabled(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->isEnabled:I

    return-void
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->PDAID:Ljava/lang/String;

    return-void
.end method
