.class public Lcom/conceptglobal/pmc/ChangePasswordActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChangePasswordActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangePasswordActivity"


# instance fields
.field btn_cancel:Landroid/widget/Button;

.field btn_submit:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field editor:Landroid/content/SharedPreferences$Editor;

.field et_cnfm_password:Landroid/widget/EditText;

.field et_cur_password:Landroid/widget/EditText;

.field et_new_password:Landroid/widget/EditText;

.field private isFromRegistration:Z

.field private isRequestCancelled:Z

.field private onChangePasswordSuccess:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private onNotificationKeySendSuccess:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private passward:Ljava/lang/String;

.field private sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

.field sharedPreferences:Landroid/content/SharedPreferences;

.field str_cnfm_password:Ljava/lang/String;

.field str_cur_password:Ljava/lang/String;

.field str_new_password:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->isRequestCancelled:Z

    .line 197
    new-instance v0, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity$3;-><init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->onChangePasswordSuccess:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 238
    new-instance v0, Lcom/conceptglobal/pmc/ChangePasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity$4;-><init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->onNotificationKeySendSuccess:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/ChangePasswordActivity;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->passward:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/ChangePasswordActivity;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/ChangePasswordActivity;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->sendChangePasswordRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/ChangePasswordActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->isRequestCancelled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/conceptglobal/pmc/ChangePasswordActivity;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->isRequestCancelled:Z

    return p1
.end method

.method private sendChangePasswordRequest(Ljava/lang/String;)V
    .locals 8

    .line 158
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v3, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->onChangePasswordSuccess:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    .line 160
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v6

    invoke-virtual {v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getChangePassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, v0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    const/4 p1, 0x0

    .line 161
    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1000fb

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private sendNotificationIdtoServer()V
    .locals 2

    .line 295
    :try_start_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/ChangePasswordActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity$$ExternalSyntheticLambda0;-><init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 3

    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 275
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 276
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_okText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/conceptglobal/pmc/ChangePasswordActivity$5;

    invoke-direct {v2, p0, p2}, Lcom/conceptglobal/pmc/ChangePasswordActivity$5;-><init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;I)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 288
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 289
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$sendNotificationIdtoServer$0$com-conceptglobal-pmc-ChangePasswordActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 7

    .line 296
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 301
    const-string v0, "FCM-- firebase token-"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 302
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Lcom/conceptglobal/pmc/model/NotificationKeyModel;

    invoke-direct {v0}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;-><init>()V

    .line 304
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->setPDAID(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/NotificationKeyModel;->setFCMKey(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FCMKEY"

    invoke-static {v1, v2, p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 309
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetNotificationKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 310
    new-instance p1, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v2, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->onNotificationKeySendSuccess:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 311
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendNotificationIdtoServer"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Notification "

    invoke-static {v2, v0, v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006e

    .line 79
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->setContentView(I)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Change Password ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/conceptglobal/pmc/utils/CustomActionBar;->initActionBar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)Landroidx/appcompat/widget/Toolbar;

    .line 81
    iput-object p0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->context:Landroid/content/Context;

    const p1, 0x7f0901d5

    .line 82
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cur_password:Landroid/widget/EditText;

    const p1, 0x7f0901d6

    .line 83
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_new_password:Landroid/widget/EditText;

    const p1, 0x7f0901d9

    .line 84
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->et_cnfm_password:Landroid/widget/EditText;

    const p1, 0x7f090074

    .line 85
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->btn_submit:Landroid/widget/Button;

    const p1, 0x7f090073

    .line 86
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->btn_cancel:Landroid/widget/Button;

    .line 88
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/Queries;->getGetPasswordFromUserDetails()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->passward:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    const-string v0, "ChangePasswordActivity"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->btn_cancel:Landroid/widget/Button;

    new-instance v0, Lcom/conceptglobal/pmc/ChangePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity$1;-><init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ISFromRegistration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->isFromRegistration:Z

    if-eqz p1, :cond_0

    .line 105
    const-string p1, "Please enter the password shared to you."

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->showAlert(Ljava/lang/String;I)V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->btn_submit:Landroid/widget/Button;

    new-instance v0, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity$2;-><init>(Lcom/conceptglobal/pmc/ChangePasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->isFromRegistration:Z

    if-eqz p1, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->sendNotificationIdtoServer()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->isFromRegistration:Z

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyContentSyncTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01-01-2000 00:00:00.000"

    invoke-static {p0, v0, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/conceptglobal/pmc/ChangePasswordActivity;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getDatabaseFolder()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteDir(Ljava/io/File;)Z

    .line 178
    invoke-static {p0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->deleteCache(Landroid/content/Context;)V

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :catch_0
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/ChangePasswordActivity;->finish()V

    .line 188
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
