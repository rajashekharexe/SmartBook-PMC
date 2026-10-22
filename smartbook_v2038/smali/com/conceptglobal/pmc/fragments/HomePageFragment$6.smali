.class Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;
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

    .line 621
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    iput-boolean p2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->val$isLocationBased:Z

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->val$val1:Ljava/lang/String;

    iput-object p4, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->val$val2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 626
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->val$isLocationBased:Z

    const-string v1, "&APPID=6125571beb5e3ff4af5889504fbfa254&units=metric"

    if-eqz v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;->FORECAST_URL_LOC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->val$val1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&lon="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->val$val2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;->FORECAST_URL_CITY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->val$val1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_0
    new-instance v1, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;-><init>()V

    invoke-virtual {v1, v0}, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;->getWeatherData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    :try_start_0
    invoke-static {v0}, Lcom/conceptglobal/pmc/model/JSONWeatherParser;->getWeatherList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 637
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/Weather;

    .line 638
    new-instance v3, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;-><init>()V

    iget-object v4, v2, Lcom/conceptglobal/pmc/model/Weather;->currentCondition:Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/model/Weather$CurrentCondition;->getIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/utils/WeatherHttpClient;->getImage(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/conceptglobal/pmc/model/Weather;->iconData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 641
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 644
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1502(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I

    .line 647
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$1;

    invoke-direct {v2, p0, v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$1;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 654
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1502(Lcom/conceptglobal/pmc/fragments/HomePageFragment;I)I

    .line 655
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;->this$0:Lcom/conceptglobal/pmc/fragments/HomePageFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment;->access$1400(Lcom/conceptglobal/pmc/fragments/HomePageFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/HomePageFragment$6$2;-><init>(Lcom/conceptglobal/pmc/fragments/HomePageFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
