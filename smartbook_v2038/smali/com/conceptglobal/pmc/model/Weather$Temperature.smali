.class public Lcom/conceptglobal/pmc/model/Weather$Temperature;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Temperature"
.end annotation


# instance fields
.field private maxTemp:F

.field private minTemp:F

.field private temp:F

.field final synthetic this$0:Lcom/conceptglobal/pmc/model/Weather;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/model/Weather;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$Temperature;->this$0:Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxTemp()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$Temperature;->maxTemp:F

    return v0
.end method

.method public getMinTemp()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$Temperature;->minTemp:F

    return v0
.end method

.method public getTemp()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$Temperature;->temp:F

    return v0
.end method

.method public setMaxTemp(F)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$Temperature;->maxTemp:F

    return-void
.end method

.method public setMinTemp(F)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$Temperature;->minTemp:F

    return-void
.end method

.method public setTemp(F)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$Temperature;->temp:F

    return-void
.end method
