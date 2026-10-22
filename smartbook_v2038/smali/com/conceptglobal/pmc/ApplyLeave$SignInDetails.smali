.class public Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;
.super Landroid/os/AsyncTask;
.source "ApplyLeave.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/ApplyLeave;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignInDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/ApplyLeave;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/ApplyLeave;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 124
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getIsTrainingORLive()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getUrlPMCService(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getMethodGetUserLeaveDetails()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/ApplyLeave;->access$002(Lcom/conceptglobal/pmc/ApplyLeave;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    new-instance p1, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;-><init>()V

    .line 131
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 132
    invoke-static {}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getInstance()Lcom/conceptglobal/pmc/common/ConstantsPMC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/common/ConstantsPMC;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/model/SendDetailsForFarmerDetails;->setPDAID(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {}, Lcom/conceptglobal/pmc/asynctask/WebService;->getInstance()Lcom/conceptglobal/pmc/asynctask/WebService;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {v1}, Lcom/conceptglobal/pmc/ApplyLeave;->access$000(Lcom/conceptglobal/pmc/ApplyLeave;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/conceptglobal/pmc/asynctask/WebService;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    const-string v0, "SendReqToServerAsync"

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/ApplyLeave;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->dismiss()V

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    const-string v1, "TotalLeaves"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    const-string v3, "TotalBalance"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/conceptglobal/pmc/ApplyLeave;->access$102(Lcom/conceptglobal/pmc/ApplyLeave;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    const-string v2, "ApprovalPending"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {v2}, Lcom/conceptglobal/pmc/ApplyLeave;->access$200(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {v1}, Lcom/conceptglobal/pmc/ApplyLeave;->access$300(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {v2}, Lcom/conceptglobal/pmc/ApplyLeave;->access$100(Lcom/conceptglobal/pmc/ApplyLeave;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    invoke-static {v1}, Lcom/conceptglobal/pmc/ApplyLeave;->access$400(Lcom/conceptglobal/pmc/ApplyLeave;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 163
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 117
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 118
    new-instance v0, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    iget-object v1, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->this$0:Lcom/conceptglobal/pmc/ApplyLeave;

    sget-object v2, Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;->COUNT_BAR:Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;

    const-string v3, "GetMasterSyncData"

    invoke-direct {v0, v1, v2, v3}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;-><init>(Landroid/content/Context;Lcom/conceptglobal/pmc/utils/CustomProgressDialog$progressbarType;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/conceptglobal/pmc/ApplyLeave$SignInDetails;->customProgressDialog:Lcom/conceptglobal/pmc/utils/CustomProgressDialog;

    .line 119
    const-string v1, "Please wait......."

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/utils/CustomProgressDialog;->showDialog(Ljava/lang/String;)V

    return-void
.end method
