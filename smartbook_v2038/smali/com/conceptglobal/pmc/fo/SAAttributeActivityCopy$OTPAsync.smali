.class Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;
.super Landroid/os/AsyncTask;
.source "SAAttributeActivityCopy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;
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
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 2640
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$1;)V
    .locals 0

    .line 2640
    invoke-direct {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;-><init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2640
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 2649
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$3800(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V

    .line 2650
    const-string p1, ""

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 2640
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$OTPAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2655
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 2644
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
