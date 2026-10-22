.class public Lcom/conceptglobal/pmc/model/JSONWeatherParser;
.super Ljava/lang/Object;
.source "JSONWeatherParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 172
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private static getInt(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getLong(Ljava/lang/String;Lorg/json/JSONObject;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private static getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 168
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeather(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/Weather;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/Weather;-><init>()V

    if-eqz p0, :cond_0

    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance p0, Lcom/conceptglobal/pmc/model/LocationModel;

    invoke-direct {p0}, Lcom/conceptglobal/pmc/model/LocationModel;-><init>()V

    .line 26
    const-string v2, "coord"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 27
    const-string v3, "lat"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/model/LocationModel;->setLatitude(F)V

    .line 28
    const-string v3, "lon"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/model/LocationModel;->setLongitude(F)V

    .line 30
    const-string v2, "sys"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    const-string v3, "country"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/conceptglobal/pmc/model/LocationModel;->setCountry(Ljava/lang/String;)V

    .line 32
    const-string v3, "sunrise"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/conceptglobal/pmc/model/LocationModel;->setSunrise(J)V

    .line 33
    const-string v3, "sunset"

    invoke-static {v3, v2}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/conceptglobal/pmc/model/LocationModel;->setSunset(J)V

    .line 34
    const-string v2, "name"

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/conceptglobal/pmc/model/LocationModel;->setCity(Ljava/lang/String;)V

    .line 35
    iput-object p0, v0, Lcom/conceptglobal/pmc/model/Weather;->location:Lcom/conceptglobal/pmc/model/LocationModel;

    .line 38
    const-string p0, "weather"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 42
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v3, "id"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setWeatherId(I)V

    .line 43
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v3, "description"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setDescr(Ljava/lang/String;)V

    .line 44
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v3, "main"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setCondition(Ljava/lang/String;)V

    .line 45
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v4, "icon"

    invoke-static {v4, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setIcon(Ljava/lang/String;)V

    .line 47
    invoke-static {v3, v1}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 48
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v3, "humidity"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setHumidity(F)V

    .line 49
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v3, "pressure"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setPressure(F)V

    .line 50
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    const-string v3, "temp_max"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->setMaxTemp(F)V

    .line 51
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    const-string v3, "temp_min"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->setMinTemp(F)V

    .line 52
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    const-string v3, "temp"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result p0

    invoke-virtual {v2, p0}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->setTemp(F)V

    .line 55
    const-string p0, "wind"

    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 56
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->wind:Lcom/conceptglobal/pmc/model/Weather$Wind;

    const-string v3, "speed"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/Weather$Wind;->setSpeed(F)V

    .line 58
    :try_start_0
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->wind:Lcom/conceptglobal/pmc/model/Weather$Wind;

    const-string v3, "deg"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result p0

    invoke-virtual {v2, p0}, Lcom/conceptglobal/pmc/model/Weather$Wind;->setDeg(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :goto_0
    const-string p0, "clouds"

    invoke-static {p0, v1}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 67
    iget-object v1, v0, Lcom/conceptglobal/pmc/model/Weather;->clouds:Lcom/conceptglobal/pmc/model/Weather$Clouds;

    const-string v2, "all"

    invoke-static {v2, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/conceptglobal/pmc/model/Weather$Clouds;->setPerc(I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWeatherList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/Weather;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string p0, "city"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 95
    new-instance v2, Lcom/conceptglobal/pmc/model/LocationModel;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/LocationModel;-><init>()V

    .line 97
    const-string v3, "coord"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 98
    const-string v4, "lat"

    invoke-static {v4, v3}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/model/LocationModel;->setLatitude(F)V

    .line 99
    const-string v4, "lon"

    invoke-static {v4, v3}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/LocationModel;->setLongitude(F)V

    .line 100
    const-string v3, "name"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/model/LocationModel;->setCity(Ljava/lang/String;)V

    .line 101
    const-string v3, "country"

    invoke-static {v3, p0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/conceptglobal/pmc/model/LocationModel;->setCountry(Ljava/lang/String;)V

    .line 109
    const-string p0, "list"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 111
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 113
    new-instance v4, Lcom/conceptglobal/pmc/model/Weather;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/Weather;-><init>()V

    .line 115
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 119
    iput-object v2, v4, Lcom/conceptglobal/pmc/model/Weather;->location:Lcom/conceptglobal/pmc/model/LocationModel;

    .line 120
    iget-object v6, v4, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v7, "dt"

    invoke-static {v7, v5}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getLong(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setDate(J)V

    .line 121
    iget-object v6, v4, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v7, "dt_txt"

    invoke-static {v7, v5}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setDateText(Ljava/lang/String;)V

    .line 124
    const-string v6, "weather"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 127
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 128
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v8, "id"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setWeatherId(I)V

    .line 129
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v8, "description"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setDescr(Ljava/lang/String;)V

    .line 130
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v8, "main"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setCondition(Ljava/lang/String;)V

    .line 131
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v9, "icon"

    invoke-static {v9, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setIcon(Ljava/lang/String;)V

    .line 133
    invoke-static {v8, v5}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 134
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v8, "humidity"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setHumidity(F)V

    .line 135
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    const-string v8, "pressure"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->setPressure(F)V

    .line 136
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    const-string v8, "temp_max"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->setMaxTemp(F)V

    .line 137
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    const-string v8, "temp_min"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->setMinTemp(F)V

    .line 138
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->temperature:Lcom/conceptglobal/pmc/model/Weather$Temperature;

    const-string v8, "temp"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v6

    invoke-virtual {v7, v6}, Lcom/conceptglobal/pmc/model/Weather$Temperature;->setTemp(F)V

    .line 141
    const-string v6, "wind"

    invoke-static {v6, v5}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 142
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->wind:Lcom/conceptglobal/pmc/model/Weather$Wind;

    const-string v8, "speed"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/model/Weather$Wind;->setSpeed(F)V

    .line 143
    iget-object v7, v4, Lcom/conceptglobal/pmc/model/Weather;->wind:Lcom/conceptglobal/pmc/model/Weather$Wind;

    const-string v8, "deg"

    invoke-static {v8, v6}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getFloat(Ljava/lang/String;Lorg/json/JSONObject;)F

    move-result v6

    invoke-virtual {v7, v6}, Lcom/conceptglobal/pmc/model/Weather$Wind;->setDeg(F)V

    .line 146
    const-string v6, "clouds"

    invoke-static {v6, v5}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 147
    iget-object v6, v4, Lcom/conceptglobal/pmc/model/Weather;->clouds:Lcom/conceptglobal/pmc/model/Weather$Clouds;

    const-string v7, "all"

    invoke-static {v7, v5}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/conceptglobal/pmc/model/Weather$Clouds;->setPerc(I)V

    .line 148
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
