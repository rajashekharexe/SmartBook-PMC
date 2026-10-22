.class public Lcom/conceptglobal/pmc/service/DataUpdateService;
.super Landroid/app/IntentService;
.source "DataUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataUpdateService"


# instance fields
.field bundle:Landroid/os/Bundle;

.field private callbackActivity:Ljava/lang/String;

.field dataCountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/DataCountModel;",
            ">;"
        }
    .end annotation
.end field

.field private pdaId:I

.field private receiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    const-string v0, "DataUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private sendDataToServer()V
    .locals 6

    .line 76
    const-string v0, "DataUpdateService"

    .line 78
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;-><init>(Lcom/conceptglobal/pmc/service/DataUpdateService;Lcom/conceptglobal/pmc/service/DataUpdateService$1;)V

    .line 80
    iget-object v3, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->dataCountList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/service/DataUpdateService$SendCountDataModel;->setDataCountList(Ljava/util/List;)V

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncTableSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 83
    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v4

    .line 85
    invoke-virtual {v4, v2, v3, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const-string v3, ""

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    const-string v4, "Success"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 92
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 95
    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_0
    return-void
.end method

.method private setCountInList(Ljava/lang/String;)V
    .locals 3

    .line 101
    new-instance v0, Lcom/conceptglobal/pmc/model/DataCountModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/DataCountModel;-><init>()V

    .line 103
    const-string v1, "Assignments"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setPdaId(I)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setTableName(Ljava/lang/String;)V

    .line 108
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getPlannedPendingActivities()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const-string v1, "DataUpdateService"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setLogDate(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 114
    :cond_0
    const-string v1, "Farmer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    iget p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setPdaId(I)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setTableName(Ljava/lang/String;)V

    .line 119
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getTotalFarmersToSend()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setCount(I)V

    .line 120
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getTotalDraftFarmersToSend()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setDraftCount(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setLogDate(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 125
    :cond_1
    const-string v1, "Retailer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setPdaId(I)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setTableName(Ljava/lang/String;)V

    .line 130
    :try_start_2
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getTotalDealers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setCount(I)V

    .line 131
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getTotalDraftDealers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setDraftCount(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setLogDate(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 136
    :cond_2
    const-string v1, "FarmerCrop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    iget p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setPdaId(I)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setTableName(Ljava/lang/String;)V

    .line 141
    :try_start_3
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getTotalFarmerCropDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setCount(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setLogDate(Ljava/lang/String;)V

    goto :goto_6

    .line 146
    :cond_3
    const-string v1, "DealerCrop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    iget p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setPdaId(I)V

    .line 149
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setTableName(Ljava/lang/String;)V

    .line 151
    :try_start_4
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getTotalDealerCompanyDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setCount(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setLogDate(Ljava/lang/String;)V

    goto :goto_6

    .line 156
    :cond_4
    const-string v1, "DealerCompany"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 158
    iget p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setPdaId(I)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setTableName(Ljava/lang/String;)V

    .line 161
    :try_start_5
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getTotalDealerCropDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setCount(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    :goto_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DataCountModel;->setLogDate(Ljava/lang/String;)V

    .line 168
    :cond_5
    :goto_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->dataCountList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 47
    monitor-enter p0

    .line 49
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->dataCountList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 55
    :try_start_2
    iput p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I

    .line 58
    :goto_0
    iget p1, p0, Lcom/conceptglobal/pmc/service/DataUpdateService;->pdaId:I

    if-eqz p1, :cond_0

    .line 60
    const-string p1, "Assignments"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/DataUpdateService;->setCountInList(Ljava/lang/String;)V

    .line 61
    const-string p1, "Farmer"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/DataUpdateService;->setCountInList(Ljava/lang/String;)V

    .line 62
    const-string p1, "Retailer"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/DataUpdateService;->setCountInList(Ljava/lang/String;)V

    .line 63
    const-string p1, "FarmerCrop"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/DataUpdateService;->setCountInList(Ljava/lang/String;)V

    .line 64
    const-string p1, "DealerCrop"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/DataUpdateService;->setCountInList(Ljava/lang/String;)V

    .line 65
    const-string p1, "DealerCompany"

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/service/DataUpdateService;->setCountInList(Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/conceptglobal/pmc/service/DataUpdateService;->sendDataToServer()V

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
