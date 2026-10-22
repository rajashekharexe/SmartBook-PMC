.class public Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CurrentCondition"
.end annotation


# instance fields
.field private condition:Ljava/lang/String;

.field private date:J

.field private dateText:Ljava/lang/String;

.field private descr:Ljava/lang/String;

.field private humidity:F

.field private icon:Ljava/lang/String;

.field private pressure:F

.field final synthetic this$0:Lcom/conceptglobal/pmc/model/Weather;

.field private weatherId:I


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/model/Weather;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->this$0:Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCondition()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->date:J

    return-wide v0
.end method

.method public getDateText()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->dateText:Ljava/lang/String;

    return-object v0
.end method

.method public getDescr()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->descr:Ljava/lang/String;

    return-object v0
.end method

.method public getHumidity()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->humidity:F

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->pressure:F

    return v0
.end method

.method public getWeatherId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->weatherId:I

    return v0
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->condition:Ljava/lang/String;

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->date:J

    return-void
.end method

.method public setDateText(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->dateText:Ljava/lang/String;

    return-void
.end method

.method public setDescr(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->descr:Ljava/lang/String;

    return-void
.end method

.method public setHumidity(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->humidity:F

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->icon:Ljava/lang/String;

    return-void
.end method

.method public setPressure(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->pressure:F

    return-void
.end method

.method public setWeatherId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->weatherId:I

    return-void
.end method
