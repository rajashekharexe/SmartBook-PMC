.class public Lcom/conceptglobal/pmc/utils/InstanceConfig;
.super Ljava/lang/Object;
.source "InstanceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;
    }
.end annotation


# static fields
.field private static instance:Lcom/conceptglobal/pmc/utils/InstanceConfig;


# instance fields
.field public final apiPath:Ljava/lang/String;

.field public baseUrl:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public clientSecret:Ljava/lang/String;

.field private final env:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

.field public feedApi:Ljava/lang/String;

.field public firebaseTokenUrl:Ljava/lang/String;

.field public hubsApi:Ljava/lang/String;

.field public isPackage:Z

.field public mediaFilesPath:Ljava/lang/String;

.field public mediaFilesPathWeb:Ljava/lang/String;

.field public neointIdentityService:Ljava/lang/String;

.field public registerDeviceTokenUrl:Ljava/lang/String;

.field public root:Ljava/lang/String;

.field public rootUrlWithPort:Ljava/lang/String;

.field public wsUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->registerDeviceTokenUrl:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 29
    const-string v1, "api/"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->apiPath:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->isPackage:Z

    .line 32
    const-string v1, "fm/"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->mediaFilesPath:Ljava/lang/String;

    .line 33
    const-string v1, "neoCampaignMedia/"

    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->mediaFilesPathWeb:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->wsUrl:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->env:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    .line 38
    invoke-direct {p0}, Lcom/conceptglobal/pmc/utils/InstanceConfig;->init()V

    return-void
.end method

.method public static getInstance(Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;)Lcom/conceptglobal/pmc/utils/InstanceConfig;
    .locals 1

    .line 42
    sget-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->instance:Lcom/conceptglobal/pmc/utils/InstanceConfig;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/conceptglobal/pmc/utils/InstanceConfig;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/utils/InstanceConfig;-><init>(Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;)V

    sput-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->instance:Lcom/conceptglobal/pmc/utils/InstanceConfig;

    .line 45
    :cond_0
    sget-object p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->instance:Lcom/conceptglobal/pmc/utils/InstanceConfig;

    return-object p0
.end method

.method private init()V
    .locals 15

    .line 49
    sget-object v0, Lcom/conceptglobal/pmc/utils/InstanceConfig$1;->$SwitchMap$com$conceptglobal$pmc$utils$InstanceConfig$Instance:[I

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->env:Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/InstanceConfig$Instance;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "https://champions.kscl.in/"

    const-string v2, "LiveHubsApi/"

    const-string v3, "QAfeedsApi/"

    const-string v4, "https://mal.neoint.ai:3000/"

    const-string v5, "https://mal.neoint.ai/"

    const-string v6, "https://neocampaign.neoint.ai:3000/QANeoCampaignApi/"

    const-string v7, "https://neocampaign.neoint.ai:3000/"

    const-string v8, "https://neocampaign.neoint.ai/"

    const-string v9, "FeedsApi/api/fcm/saveDeviceToken"

    const-string v10, "FeedsApi/"

    const-string v11, "HubsApi/"

    const-string v12, "neointCampaignQA"

    const-string v13, "api/notification/registerDevice"

    const-string v14, "NeointIdentityService"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 153
    :pswitch_0
    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 154
    const-string v0, "https://champions.kscl.in:3000/NeoCampaignApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 155
    const-string v0, "https://champions.kscl.in:3000/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 157
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 158
    const-string v0, "neointCampaignLive"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 160
    iput-object v10, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->registerDeviceTokenUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 140
    :pswitch_1
    iput-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 141
    const-string v0, "https://champions.kscl.in:8080/UATNeoCampaignApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 142
    const-string v0, "https://champions.kscl.in:8080/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 143
    iput-object v11, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 144
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 145
    iput-object v12, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 146
    iput-object v12, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 147
    iput-object v10, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->registerDeviceTokenUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 127
    :pswitch_2
    iput-object v8, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 128
    iput-object v6, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 129
    iput-object v7, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 130
    iput-object v11, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 131
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 132
    iput-object v12, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 133
    iput-object v12, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 134
    iput-object v10, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->registerDeviceTokenUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 114
    :pswitch_3
    iput-object v8, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 115
    const-string v0, "https://neocampaign.neoint.ai:3000/NeoCampaignApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 116
    iput-object v7, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 117
    iput-object v11, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 118
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 119
    iput-object v12, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 120
    iput-object v12, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 121
    iput-object v10, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->registerDeviceTokenUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 101
    :pswitch_4
    iput-object v5, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 102
    const-string v0, "https://mal.neoint.ai:3000/DFNeoCampaignLiveApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 103
    iput-object v4, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 104
    const-string v0, "$root${apiPath}notification/registerDevice"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 106
    iput-object v3, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 107
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 108
    const-string v0, "ncLive"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 110
    const-string v0, "wss://mal.neoint.ai:3000/ws/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->wsUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 89
    :pswitch_5
    iput-object v5, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 90
    const-string v0, "https://mal.neoint.ai:3000/DFNeoCampaignUATApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 91
    iput-object v4, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 93
    const-string v0, "UATHubsApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 94
    iput-object v3, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 95
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 96
    const-string v0, "ncUAT"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 98
    const-string v0, "wss://mal.neoint.ai:3000/wsuat/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->wsUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 77
    :pswitch_6
    const-string v0, "https://piuat.neoint.ai/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 78
    const-string v0, "https://piuat.neoint.ai:3002/NeoIntCampaign/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 79
    const-string v0, "https://piuat.neoint.ai:3002/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 80
    const-string v0, "UATApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 81
    const-string v0, "UATfeedsApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 82
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 84
    const-string v0, "NeointMobile"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_7
    const-string v0, "https://icloud.neoint.ai/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 66
    const-string v0, "https://icloud.neoint.ai:3002/NeoCampaignAPI/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 67
    const-string v0, "https://icloud.neoint.ai:3002/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 68
    const-string v0, "OrdersApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 69
    const-string v0, "DemoFeeds/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 70
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 72
    const-string v0, "orders"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_8
    iput-object v8, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->baseUrl:Ljava/lang/String;

    .line 52
    iput-object v6, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->root:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->firebaseTokenUrl:Ljava/lang/String;

    .line 54
    iput-object v7, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    .line 55
    iput-object v11, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->hubsApi:Ljava/lang/String;

    .line 56
    const-string v0, "QAFeedsApi/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->feedApi:Ljava/lang/String;

    .line 57
    iput-object v14, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->neointIdentityService:Ljava/lang/String;

    .line 58
    iput-object v12, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientId:Ljava/lang/String;

    .line 59
    iput-object v12, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->clientSecret:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->rootUrlWithPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "QAFeedsApi/api/fcm/saveDeviceToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->registerDeviceTokenUrl:Ljava/lang/String;

    .line 61
    const-string v0, "wss://neocampaign.neoint.ai:3000/ws/"

    iput-object v0, p0, Lcom/conceptglobal/pmc/utils/InstanceConfig;->wsUrl:Ljava/lang/String;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
