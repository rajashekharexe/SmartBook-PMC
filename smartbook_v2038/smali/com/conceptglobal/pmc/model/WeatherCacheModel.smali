.class public Lcom/conceptglobal/pmc/model/WeatherCacheModel;
.super Ljava/lang/Object;
.source "WeatherCacheModel.java"


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private currentWeather:Lcom/conceptglobal/pmc/model/Weather;

.field private currentWeatherUpdatedTime:Ljava/lang/String;

.field private forecastWeatherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;"
        }
    .end annotation
.end field

.field private forecastWeatherUpdatedTime:Ljava/lang/String;

.field private isCurrentLocation:I

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private timeUpdated:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWeather()Lcom/conceptglobal/pmc/model/Weather;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->currentWeather:Lcom/conceptglobal/pmc/model/Weather;

    return-object v0
.end method

.method public getCurrentWeatherUpdatedTime()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->currentWeatherUpdatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getForecastWeatherList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->forecastWeatherList:Ljava/util/List;

    return-object v0
.end method

.method public getForecastWeatherUpdatedTime()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->forecastWeatherUpdatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCurrentLocation()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->isCurrentLocation:I

    return v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeUpdated()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->timeUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->country:Ljava/lang/String;

    return-void
.end method

.method public setCurrentWeather(Lcom/conceptglobal/pmc/model/Weather;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->currentWeather:Lcom/conceptglobal/pmc/model/Weather;

    return-void
.end method

.method public setCurrentWeatherUpdatedTime(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->currentWeatherUpdatedTime:Ljava/lang/String;

    return-void
.end method

.method public setForecastWeatherList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->forecastWeatherList:Ljava/util/List;

    return-void
.end method

.method public setForecastWeatherUpdatedTime(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->forecastWeatherUpdatedTime:Ljava/lang/String;

    return-void
.end method

.method public setIsCurrentLocation(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->isCurrentLocation:I

    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->latitude:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->longitude:Ljava/lang/String;

    return-void
.end method

.method public setTimeUpdated(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/conceptglobal/pmc/model/WeatherCacheModel;->timeUpdated:Ljava/lang/String;

    return-void
.end method
