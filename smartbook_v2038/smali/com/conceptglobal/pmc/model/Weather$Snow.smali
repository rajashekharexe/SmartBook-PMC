.class public Lcom/conceptglobal/pmc/model/Weather$Snow;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Snow"
.end annotation


# instance fields
.field private ammount:F

.field final synthetic this$0:Lcom/conceptglobal/pmc/model/Weather;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/model/Weather;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$Snow;->this$0:Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmmount()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$Snow;->ammount:F

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Weather$Snow;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setAmmount(F)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$Snow;->ammount:F

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$Snow;->time:Ljava/lang/String;

    return-void
.end method
