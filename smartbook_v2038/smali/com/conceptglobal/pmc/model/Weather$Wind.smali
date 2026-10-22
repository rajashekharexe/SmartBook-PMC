.class public Lcom/conceptglobal/pmc/model/Weather$Wind;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wind"
.end annotation


# instance fields
.field private deg:F

.field private speed:F

.field final synthetic this$0:Lcom/conceptglobal/pmc/model/Weather;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/model/Weather;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$Wind;->this$0:Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeg()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$Wind;->deg:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 114
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$Wind;->speed:F

    return v0
.end method

.method public setDeg(F)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$Wind;->deg:F

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$Wind;->speed:F

    return-void
.end method
