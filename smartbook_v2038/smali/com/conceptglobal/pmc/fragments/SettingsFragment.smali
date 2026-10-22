.class public Lcom/conceptglobal/pmc/fragments/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# instance fields
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

    .line 48
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->notifStatus:Z

    return p0
.end method

.method static synthetic access$002(Lcom/conceptglobal/pmc/fragments/SettingsFragment;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->notifStatus:Z

    return p1
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    return p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$202(Lcom/conceptglobal/pmc/fragments/SettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/fragments/SettingsFragment;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->sendNotificationStatus(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

    return-object p0
.end method

.method private getData()V
    .locals 3

    const/4 v0, 0x1

    .line 131
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getNotificationStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getcount(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 133
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private initialization()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09040c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchNotification:Landroid/widget/Switch;

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f09040e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchTicker:Landroid/widget/Switch;

    .line 71
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->saveButton:Landroid/widget/Button;

    .line 73
    new-instance v1, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;-><init>(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchNotification:Landroid/widget/Switch;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/SettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment$2;-><init>(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    .line 107
    const-string v1, "False"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchTicker:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchTicker:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchTicker:Landroid/widget/Switch;

    new-instance v1, Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;-><init>(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private sendNotificationStatus(Z)V
    .locals 10

    .line 144
    const-string v0, "sendNotificationStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchNotification:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification Status"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    new-instance v1, Lcom/conceptglobal/pmc/model/NotificationStatusModel;

    invoke-direct {v1}, Lcom/conceptglobal/pmc/model/NotificationStatusModel;-><init>()V

    .line 148
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 149
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

    .line 150
    :goto_0
    invoke-virtual {v1, v5}, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->setIsEnabled(I)V

    .line 151
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getWcfToken()Ljava/lang/String;

    move-result-object v6

    .line 153
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

    iput-object v7, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->urlString:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v7

    iget-object v8, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->urlString:Ljava/lang/String;

    invoke-virtual {v7, v5, v8, v6}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequestwithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->response:Ljava/lang/String;

    .line 155
    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->response:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/conceptglobal/pmc/model/ResponseModel;

    invoke-virtual {v2, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/ResponseModel;

    .line 156
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->response:Ljava/lang/String;

    .line 157
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AUTHORISED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 158
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->response:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->response:Ljava/lang/String;

    const-string v2, "Success"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/NotificationStatusModel;->getIsEnabled()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/common/Queries;->updateNotificationstatus(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 162
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->notifStatus:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    goto/16 :goto_1

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->response:Ljava/lang/String;

    const-string v1, "Failed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 165
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchNotification:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 166
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->notifStatus:Z

    goto :goto_1

    .line 170
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchNotification:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 171
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->notifStatus:Z

    goto :goto_1

    .line 173
    :cond_3
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v5, "UNAUTHORISED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchNotification:Landroid/widget/Switch;

    iget-boolean v5, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 176
    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    iput-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->notifStatus:Z

    .line 177
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/ResponseModel;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid Token"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    new-instance v1, Lcom/conceptglobal/pmc/sync/GetToken;

    invoke-virtual {p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5}, Lcom/conceptglobal/pmc/sync/GetToken;-><init>(Landroid/content/Context;I)V

    .line 181
    invoke-virtual {v1}, Lcom/conceptglobal/pmc/sync/GetToken;->StartGetToken()V

    .line 183
    const-string v1, "com.conceptglobal.pmc.fragments.SettingsFragment"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 185
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 186
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 187
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

    .line 208
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->response:Ljava/lang/String;

    const-string v2, "Settingsfragment"

    invoke-static {v2, p1, v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 212
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_5
    return-void
.end method

.method private setCustomActionBar()V
    .locals 5

    .line 218
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, ")"

    const-string v3, " )"

    const-string v4, " "

    if-eq v0, v1, :cond_1

    .line 219
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_settingsToolbarText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Settings (Training - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto/16 :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 224
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

    .line 225
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Settings ( Live "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

    invoke-static {v3}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

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
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->switchNotification:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->userNotifyStatus:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->con:Landroid/content/Context;

    const p3, 0x7f0c00bb

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->rootView:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->initialization()V

    .line 58
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->getData()V

    .line 59
    invoke-direct {p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->setData()V

    .line 61
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->rootView:Landroid/view/View;

    return-object p1
.end method
