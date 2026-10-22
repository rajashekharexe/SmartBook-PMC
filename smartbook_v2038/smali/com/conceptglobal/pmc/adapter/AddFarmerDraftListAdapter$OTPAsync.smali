.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;
.super Landroid/os/AsyncTask;
.source "AddFarmerDraftListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OTPAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V
    .locals 0

    .line 1302
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;)V
    .locals 0

    .line 1302
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1302
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 1311
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$3000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)V

    .line 1312
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1302
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$OTPAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 1317
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1306
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
