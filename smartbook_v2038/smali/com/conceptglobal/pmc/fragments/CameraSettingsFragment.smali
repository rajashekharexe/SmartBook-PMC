.class public Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "CameraSettingsFragment.java"


# instance fields
.field private cameraSwitchValue:I

.field private con:Landroid/content/Context;

.field private notifStatus:Z

.field private progressDialog:Landroid/app/ProgressDialog;

.field private response:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private saveButton:Landroid/widget/Button;

.field private switchNotification:Landroid/widget/Switch;

.field private switchTicker:Landroid/widget/Switch;

.field private urlString:Ljava/lang/String;

.field private userNotifyStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    return-void
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->notifStatus:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    return-object p0
.end method

.method private getData()V
    .locals 3

    .line 144
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v2, "cameraOptions"

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->getItemValueFromConfigurableLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->cameraSwitchValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initialization()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09040c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchNotification:Landroid/widget/Switch;

    .line 69
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09040e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchTicker:Landroid/widget/Switch;

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->saveButton:Landroid/widget/Button;

    .line 105
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyTicketVisibility()Ljava/lang/String;

    move-result-object v1

    const-string v2, "False"

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "True"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchTicker:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchTicker:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchTicker:Landroid/widget/Switch;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private sendNotificationStatus(Z)V
    .locals 10

    .line 164
    const-string v0, "sendNotificationStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchNotification:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification Status"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/model/NotificationStatusModel;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/NotificationStatusModel;-><init>()V

    .line 168
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 169
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->setPDAID(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 170
    :goto_0
    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->setIsEnabled(I)V

    .line 171
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v6

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v9

    invoke-virtual {v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v8

    invoke-virtual {v8}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSendNotificationEnabledStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->urlString:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->urlString:Ljava/lang/String;

    invoke-virtual {v7, v5, v8, v6}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->response:Ljava/lang/String;

    .line 175
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->response:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 176
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->response:Ljava/lang/String;

    .line 177
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AUTHORISED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->response:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->response:Ljava/lang/String;

    const-string v2, "Success"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 180
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->getIsEnabled()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->updateNotificationstatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 181
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->notifStatus:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    goto/16 :goto_1

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->response:Ljava/lang/String;

    const-string v1, "Failed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 183
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchNotification:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 184
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->notifStatus:Z

    goto :goto_1

    .line 187
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchNotification:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 188
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->notifStatus:Z

    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v5, "UNAUTHORISED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchNotification:Landroid/widget/Switch;

    iget-boolean v5, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 192
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->userNotifyStatus:Z

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->notifStatus:Z

    .line 193
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid Token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    new-instance v1, Lcom/conceptglobal/pmc/sync/GetToken;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 196
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 198
    const-string v1, "com.conceptglobal.pmc.fragments.SettingsFragment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 199
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 201
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 202
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->response:Ljava/lang/String;

    const-string v2, "Settingsfragment"

    invoke-static {v2, p1, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 227
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5
    return-void
.end method

.method private setCustomActionBar()V
    .locals 5

    .line 233
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ")"

    const-string v3, " )"

    const-string v4, " "

    if-eq v0, v1, :cond_1

    .line 234
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Camera Settings (Training - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Training "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Camera Settings ( Live "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (Live "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    :goto_0
    return-void
.end method

.method private setData()V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyTicketVisibility()Ljava/lang/String;

    move-result-object v1

    const-string v2, "True"

    invoke-static {v0, v1, v2}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchTicker:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->switchTicker:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->con:Landroid/content/Context;

    const p3, 0x7f0c00b3

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->rootView:Landroid/view/View;

    .line 58
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->initialization()V

    .line 59
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->getData()V

    .line 60
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->setData()V

    .line 62
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
