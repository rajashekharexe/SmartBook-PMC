.class public Lcom/conceptglobal/pmc/model/NotificationKeyModel;
.super Ljava/lang/Object;
.source "NotificationKeyModel.java"


# instance fields
.field private FCMKey:Ljava/lang/String;

.field private PDAID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFCMKey()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->FCMKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPDAID()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->PDAID:Ljava/lang/String;

    return-object v0
.end method

.method public setFCMKey(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->FCMKey:Ljava/lang/String;

    return-void
.end method

.method public setPDAID(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->PDAID:Ljava/lang/String;

    return-void
.end method
