.class public Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;
.super Landroidx/fragment/app/Fragment;
.source "FunctionalStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "FunctionalStateFragment"


# instance fields
.field private btnDownload:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private edtDistrict:Landroid/widget/EditText;

.field private edtState:Landroid/widget/EditText;

.field private isSyncing:Z

.field private objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

.field private response:Ljava/lang/String;

.field rootView:Landroid/view/View;

.field private final stateChanged:Landroid/text/TextWatcher;

.field private tvDistrictid:Landroid/widget/TextView;

.field private tvStateid:Landroid/widget/TextView;

.field private urlString:Ljava/lang/String;

.field public webServices:Lcom/conceptglobal/pmc/asynctask/WebService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->isSyncing:Z

    .line 88
    new-instance v0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->stateChanged:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->edtDistrict:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvDistrictid:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->getGeoDetails()V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->isSyncing:Z

    return p0
.end method

.method private bindlabels()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->edtState:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->edtDistrict:Landroid/widget/EditText;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->btnDownload:Landroid/widget/Button;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_downloadFunStateButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getGeoDetails()V
    .locals 9

    .line 147
    const-string v0, "getGeoDetails"

    const-string v1, "data"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/conceptglobal/pmc/model/GetGeography;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/model/GetGeography;-><init>()V

    .line 148
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 149
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvStateid:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/model/GetGeography;->setStateId(I)V

    .line 150
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvDistrictid:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvDistrictid:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/model/GetGeography;->setDistrictId(I)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v3, v2}, Lcom/conceptglobal/pmc/model/GetGeography;->setDistrictId(I)V

    .line 155
    :goto_0
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/conceptglobal/pmc/model/GetGeography;->setPDAID(I)V

    .line 158
    :cond_1
    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v5

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v7

    invoke-virtual {v7}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSTDV()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->urlString:Ljava/lang/String;

    .line 162
    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    invoke-virtual {v7, v3, v6, v5}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->response:Ljava/lang/String;

    .line 163
    new-instance v3, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->response:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 164
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->response:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AUTHORISED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 166
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xa

    if-le v3, v6, :cond_2

    .line 167
    new-instance v3, Ljava/io/StringReader;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/conceptglobal/pmc/model/SDTV;

    invoke-virtual {v4, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/model/SDTV;

    .line 168
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-static {v1, v3}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->insertDtdv(Lcom/conceptglobal/pmc/model/SDTV;Lcom/conceptglobal/pmc/model/SendAckSdtv;)Lcom/conceptglobal/pmc/model/SendAckSdtv;

    move-result-object v1

    iput-object v1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    if-eqz v1, :cond_4

    .line 169
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->getAckList()Lcom/conceptglobal/pmc/model/SendAcknowledgeSDTV;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 171
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->sendAcktoServer()V

    goto :goto_1

    .line 174
    :cond_2
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->isSyncing:Z

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UNAUTHORISED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Invalid Token"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 181
    new-instance v1, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 182
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 184
    const-string v1, "com.conceptglobal.pmc.fragments.FunctionalStateFragment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    .line 185
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 187
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 188
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 193
    iput-boolean v2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->isSyncing:Z

    .line 194
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->response:Ljava/lang/String;

    const-string v3, "FunctionalStateFragment"

    invoke-static {v3, v1, v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private sendAcktoServer()V
    .locals 7

    .line 201
    const-string v0, "data"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 202
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/model/SendAckSdtv;->setPDAID(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSTDAck()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->urlString:Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v4

    .line 206
    iget-object v5, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->urlString:Ljava/lang/String;

    invoke-virtual {v5, v3, v6, v4}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->response:Ljava/lang/String;

    .line 207
    new-instance v3, Ljava/io/StringReader;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->response:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 208
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->response:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AUTHORISED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 210
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-le v2, v4, :cond_1

    .line 211
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidACKinFS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 218
    :cond_1
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->isSyncing:Z

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UNAUTHORISED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid Token"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    new-instance v0, Lcom/conceptglobal/pmc/sync/GetToken;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 226
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 228
    const-string v0, "com.conceptglobal.pmc.fragments.FunctionalStateFragment"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 229
    const-string v2, "sendAcktoServer"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 230
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 232
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 238
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->isSyncing:Z

    .line 239
    const-string v1, "FunctionalStateFragment"

    invoke-static {v1, v0}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_cancelDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$3;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 254
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_tryAgainDialogButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$2;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 264
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09009b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x7f09019f

    const/4 v3, 0x3

    const v4, 0x7f1101b9

    const-string v5, " "

    if-eq v0, v1, :cond_1

    const v1, 0x7f0901ce

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 110
    :cond_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_stateText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->gettingStates()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvStateid:Landroid/widget/TextView;

    move-object v6, v0

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 111
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 112
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 113
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvStateid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v7, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_districtText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvStateid:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDistricts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvDistrictid:Landroid/widget/TextView;

    move-object v6, v0

    move-object v10, p1

    invoke-direct/range {v6 .. v11}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 118
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 119
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 120
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_1

    .line 123
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseSelectStateToastInFS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvStateid:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 129
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseSelectStateToastInFS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 130
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvDistrictid:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    .line 131
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseSelectDistrictToastInFS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "Please select district"

    :goto_0
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 134
    :cond_6
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 135
    new-instance p1, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;-><init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$1;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$SDTSync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 137
    :cond_7
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_CannotSyncAlertText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->showAlert(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    const p3, 0x7f0c002b

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->rootView:Landroid/view/View;

    const p3, 0x7f0901ce

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->edtState:Landroid/widget/EditText;

    .line 66
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->rootView:Landroid/view/View;

    const p3, 0x7f09019f

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->edtDistrict:Landroid/widget/EditText;

    .line 67
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->rootView:Landroid/view/View;

    const p3, 0x7f09009b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->btnDownload:Landroid/widget/Button;

    .line 68
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->rootView:Landroid/view/View;

    const p3, 0x7f090580

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvStateid:Landroid/widget/TextView;

    .line 69
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->rootView:Landroid/view/View;

    const p3, 0x7f090526

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->tvDistrictid:Landroid/widget/TextView;

    .line 70
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->bindlabels()V

    .line 71
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->context:Landroid/content/Context;

    .line 72
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->edtState:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->edtDistrict:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->btnDownload:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->edtState:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->stateChanged:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->webServices:Lcom/conceptglobal/pmc/asynctask/WebService;

    .line 77
    new-instance p1, Lcom/conceptglobal/pmc/model/SendAckSdtv;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/SendAckSdtv;-><init>()V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->objAck:Lcom/conceptglobal/pmc/model/SendAckSdtv;

    .line 78
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
