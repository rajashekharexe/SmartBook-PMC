.class public Lcom/conceptglobal/pmc/model/Weather;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;,
        Lcom/conceptglobal/pmc/model/Weather$Temperature;,
        Lcom/conceptglobal/pmc/model/Weather$Wind;,
        Lcom/conceptglobal/pmc/model/Weather$Rain;,
        Lcom/conceptglobal/pmc/model/Weather$Snow;,
        Lcom/conceptglobal/pmc/model/Weather$Clouds;
    }
.end annotation


# instance fields
.field public clouds:Lcom/conceptglobal/pmc/model/Weather$Clouds;

.field public currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

.field public iconData:[B

.field public location:Lcom/conceptglobal/pmc/model/LocationModel;

.field public rain:Lcom/conceptglobal/pmc/model/Weather$Rain;

.field public snow:Lcom/conceptglobal/pmc/model/Weather$Snow;

.field public temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

.field public wind:Lcom/conceptglobal/pmc/model/Weather$Wind;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;-><init>(Lcom/conceptglobal/pmc/model/Weather;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    .line 10
    new-instance v0, Lcom/conceptglobal/pmc/model/Weather$Temperature;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/model/Weather$Temperature;-><init>(Lcom/conceptglobal/pmc/model/Weather;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    .line 11
    new-instance v0, Lcom/conceptglobal/pmc/model/Weather$Wind;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/model/Weather$Wind;-><init>(Lcom/conceptglobal/pmc/model/Weather;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/Weather;->wind:Lcom/conceptglobal/pmc/model/Weather$Wind;

    .line 12
    new-instance v0, Lcom/conceptglobal/pmc/model/Weather$Rain;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/model/Weather$Rain;-><init>(Lcom/conceptglobal/pmc/model/Weather;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/Weather;->rain:Lcom/conceptglobal/pmc/model/Weather$Rain;

    .line 13
    new-instance v0, Lcom/conceptglobal/pmc/model/Weather$Snow;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/model/Weather$Snow;-><init>(Lcom/conceptglobal/pmc/model/Weather;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/Weather;->snow:Lcom/conceptglobal/pmc/model/Weather$Snow;

    .line 14
    new-instance v0, Lcom/conceptglobal/pmc/model/Weather$Clouds;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/model/Weather$Clouds;-><init>(Lcom/conceptglobal/pmc/model/Weather;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/model/Weather;->clouds:Lcom/conceptglobal/pmc/model/Weather$Clouds;

    return-void
.end method
