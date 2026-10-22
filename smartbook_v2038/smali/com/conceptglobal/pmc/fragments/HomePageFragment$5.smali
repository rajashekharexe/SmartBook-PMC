.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;
.super Ljava/lang/Object;
.source "HomePageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/HomePageFragment;->getWeatherInfo(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

.field final synthetic val$isLocationBased:Z

.field final synthetic val$val1:Ljava/lang/String;

.field final synthetic val$val2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 570
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iput-boolean p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->val$isLocationBased:Z

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->val$val1:Ljava/lang/String;

    iput-object p4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->val$val2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 575
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->val$isLocationBased:Z

    const/4 v1, 0x1

    const-string v2, "&APPID=6125571beb5e3ff4af5889504fbfa254&units=metric"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$802(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;->BASE_URL_LOC:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "lat="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->val$val1:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&lon="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->val$val2:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$802(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;->BASE_URL_CITY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->val$val1:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 582
    :goto_0
    new-instance v2, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;-><init>()V

    invoke-virtual {v2, v0}, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;->getWeatherData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    :try_start_0
    invoke-static {v0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getWeather(Ljava/lang/String;)Lcom/conceptglobal/pmc/model/Weather;

    move-result-object v0

    .line 587
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getIcon()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 588
    new-instance v2, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;-><init>()V

    iget-object v4, v0, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;->getImage(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->iconData:[B

    .line 590
    :cond_1
    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->location:Lcom/conceptglobal/pmc/model/LocationModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LocationModel;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/conceptglobal/pmc/model/Weather;->location:Lcom/conceptglobal/pmc/model/LocationModel;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/LocationModel;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 591
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object v4, v0, Lcom/conceptglobal/pmc/model/Weather;->location:Lcom/conceptglobal/pmc/model/LocationModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/LocationModel;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$902(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iget-object v4, v0, Lcom/conceptglobal/pmc/model/Weather;->location:Lcom/conceptglobal/pmc/model/LocationModel;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/LocationModel;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1002(Lcom/conceptglobal/pmc/fragments/HomePageFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 600
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v2, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1102(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I

    .line 602
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$1;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$1;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;Lcom/conceptglobal/pmc/model/Weather;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 610
    :cond_3
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1102(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I

    .line 611
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$5$2;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
