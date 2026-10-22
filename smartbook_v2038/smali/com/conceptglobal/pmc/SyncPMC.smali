.class public Lcom/conceptglobal/pmc/SyncPMC;
.super Landroid/app/Activity;
.source "SyncPMC.java"

# interfaces
.implements Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;


# instance fields
.field private TAG:Ljava/lang/String;

.field Tableexistsornot:Z

.field private context:Landroid/content/Context;

.field countFarmerDetails:I

.field countofApprovalStatus:I

.field private intentGetData:Landroid/content/Intent;

.field private isActivityInForeground:Z

.field private mActivity:Landroid/app/Activity;

.field mDialogRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field public mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

.field mRunnable:Ljava/lang/Runnable;

.field private msg:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rlSyncScreen:Landroid/widget/RelativeLayout;

.field private sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

.field private syncImagesListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private syncPMCListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

.field private tvProgressMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const-string v0, "SyncPMC"

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->isActivityInForeground:Z

    .line 191
    new-instance v0, Lcom/conceptglobal/pmc/SyncPMC$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SyncPMC$1;-><init>(Lcom/conceptglobal/pmc/SyncPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->syncImagesListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 248
    new-instance v0, Lcom/conceptglobal/pmc/SyncPMC$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SyncPMC$2;-><init>(Lcom/conceptglobal/pmc/SyncPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->syncPMCListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    .line 482
    new-instance v0, Lcom/conceptglobal/pmc/SyncPMC$5;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SyncPMC$5;-><init>(Lcom/conceptglobal/pmc/SyncPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->mDialogRunnable:Ljava/lang/Runnable;

    .line 490
    new-instance v0, Lcom/conceptglobal/pmc/SyncPMC$6;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/SyncPMC$6;-><init>(Lcom/conceptglobal/pmc/SyncPMC;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/SyncPMC;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/conceptglobal/pmc/SyncPMC;->showAlert(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/content/Intent;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/SyncPMC;->intentGetData:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/conceptglobal/pmc/SyncPMC;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SyncPMC;->syncImageDetailsTable()V

    return-void
.end method

.method static synthetic access$500(Lcom/conceptglobal/pmc/SyncPMC;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/SyncPMC;->msg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/conceptglobal/pmc/SyncPMC;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/SyncPMC;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/conceptglobal/pmc/SyncPMC;)Landroid/app/Activity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/conceptglobal/pmc/SyncPMC;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SyncPMC;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->intentGetData:Landroid/content/Intent;

    .line 117
    iput-object p0, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    const v0, 0x7f0905ac

    .line 118
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SyncPMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->tvProgressMessage:Landroid/widget/TextView;

    const v0, 0x7f090394

    .line 119
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SyncPMC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->rlSyncScreen:Landroid/widget/RelativeLayout;

    .line 120
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SyncPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private notifyUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 458
    const-string v0, "SyncPMC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 459
    iget-boolean p1, p0, Lcom/conceptglobal/pmc/SyncPMC;->isActivityInForeground:Z

    if-eqz p1, :cond_1

    .line 461
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 462
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 469
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC;->mHandler:Landroid/os/Handler;

    .line 470
    iput-object p2, p0, Lcom/conceptglobal/pmc/SyncPMC;->msg:Ljava/lang/String;

    .line 471
    iget-object p2, p0, Lcom/conceptglobal/pmc/SyncPMC;->mDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SyncPMC;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isAppRunningInForeground(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 475
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC;->mHandler:Landroid/os/Handler;

    .line 476
    iput-object p2, p0, Lcom/conceptglobal/pmc/SyncPMC;->msg:Ljava/lang/String;

    .line 477
    iget-object p2, p0, Lcom/conceptglobal/pmc/SyncPMC;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;I)V
    .locals 2

    .line 387
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/SyncPMC$3;

    invoke-direct {v1, p0, p2}, Lcom/conceptglobal/pmc/SyncPMC$3;-><init>(Lcom/conceptglobal/pmc/SyncPMC;I)V

    const p2, 0x104000a

    invoke-virtual {p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 405
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 406
    iget-object p2, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 407
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 413
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/conceptglobal/pmc/SyncPMC$4;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/SyncPMC$4;-><init>(Lcom/conceptglobal/pmc/SyncPMC;)V

    const v2, 0x7f100101

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 421
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method private syncImageDetailsTable()V
    .locals 9

    .line 153
    const-string v0, "SyncPMC"

    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC;->tvProgressMessage:Landroid/widget/TextView;

    const-string v2, "Sending pictures data to server,please wait.."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getImageDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getImageDetailsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 159
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    invoke-static {v0, v2}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    :goto_0
    new-instance v2, Lcom/conceptglobal/pmc/model/SendPictureSyncObject;

    invoke-direct {v2}, Lcom/conceptglobal/pmc/model/SendPictureSyncObject;-><init>()V

    .line 163
    invoke-virtual {v2, v1}, Lcom/conceptglobal/pmc/model/SendPictureSyncObject;->setPictureRecords(Ljava/util/List;)V

    .line 164
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 168
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/conceptglobal/pmc/PMCApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/conceptglobal/pmc/utils/FileUtils;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NBHCImageObject"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 172
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "imageobj1.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 174
    invoke-virtual {v1, v6}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 175
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 176
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncImagesListenerOBJ"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v4, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/conceptglobal/pmc/SyncPMC;->syncImagesListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 183
    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private syncPMC()V
    .locals 11

    .line 130
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->tvProgressMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/Queries;->getSelectFarmerActDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerActivityDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->getSelectFarmerCropMapping()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerCropMappingDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getSelectFarmerListDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getListFarmereDetails(Ljava/lang/String;)Ljava/util/List;

    .line 135
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/Queries;->getSelectAssignmentVisitDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getAssignmentVisitDetails(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 137
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 138
    new-instance v4, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;

    invoke-direct {v4}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;-><init>()V

    .line 139
    invoke-virtual {v4, v0}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setAssignmentActivitiesModel(Ljava/util/List;)V

    .line 140
    invoke-virtual {v4, v1}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setFarmerCropmappingModel(Ljava/util/List;)V

    .line 142
    invoke-virtual {v4, v2}, Lcom/conceptglobal/pmc/model/SendFarmerDetailsModel;->setAssignmentVisitModel(Ljava/util/List;)V

    .line 144
    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncPMCListenerOBJ"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    iget-object v6, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/conceptglobal/pmc/SyncPMC;->syncPMCListener:Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodSyncPMCData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/interfaces/OnCompleteListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->sendRequest:Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;

    .line 148
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/asynctask/SendRequestToServerAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public convertStandardJSONString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 236
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 237
    const-string v0, "\"{"

    const-string v1, "{"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 238
    const-string v0, "}\","

    const-string v1, "},"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 239
    const-string v0, "}\""

    const-string v1, "}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/SyncPMC;->requestWindowFeature(I)Z

    const v0, 0x7f0c0133

    .line 88
    invoke-virtual {p0, v0}, Lcom/conceptglobal/pmc/SyncPMC;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/conceptglobal/pmc/SyncPMC;->init()V

    .line 90
    iput-object p0, p0, Lcom/conceptglobal/pmc/SyncPMC;->mActivity:Landroid/app/Activity;

    .line 91
    new-instance v0, Lcom/conceptglobal/pmc/SyncResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/conceptglobal/pmc/SyncResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    .line 92
    invoke-virtual {v0, p0}, Lcom/conceptglobal/pmc/SyncResultReceiver;->setReceiver(Lcom/conceptglobal/pmc/interfaces/OnResultReceiver;)V

    .line 93
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SyncPMC;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/conceptglobal/pmc/service/SyncDataService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v0, "callbackActivity"

    const-string v1, "SyncPMC"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v0, "receiver"

    iget-object v1, p0, Lcom/conceptglobal/pmc/SyncPMC;->mReceiver:Lcom/conceptglobal/pmc/SyncResultReceiver;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/SyncPMC;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const p1, 0x7f100079

    .line 102
    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/SyncPMC;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/SyncPMC;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/conceptglobal/pmc/SyncPMC;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/conceptglobal/pmc/SyncPMC;->showAlert(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    const-string p1, "respMsg"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 446
    const-string v0, "callbackActivity"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 447
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Act response--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/conceptglobal/pmc/SyncPMC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Act callbackActivity--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0, p2, p1}, Lcom/conceptglobal/pmc/SyncPMC;->notifyUser(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 440
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x0

    const-string v0, "Sending data to server, Please wait.."

    invoke-static {p1, p2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/conceptglobal/pmc/SyncPMC;->progressDialog:Landroid/app/ProgressDialog;

    :cond_3
    :goto_0
    return-void
.end method
