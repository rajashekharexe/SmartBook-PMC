.class Lcom/conceptglobal/loation/GetLocation$LocationControl;
.super Landroid/os/AsyncTask;
.source "GetLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/loation/GetLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/Activity;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/loation/GetLocation;


# direct methods
.method private constructor <init>(Lcom/conceptglobal/loation/GetLocation;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$0(Lcom/conceptglobal/loation/GetLocation;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/conceptglobal/loation/GetLocation;Lcom/conceptglobal/loation/GetLocation$LocationControl;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/conceptglobal/loation/GetLocation$LocationControl;-><init>(Lcom/conceptglobal/loation/GetLocation;)V

    return-void
.end method

.method static synthetic access$3(Lcom/conceptglobal/loation/GetLocation$LocationControl;)Lcom/conceptglobal/loation/GetLocation;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    return-object p0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/loation/GetLocation$LocationControl;->doInBackground([Landroid/app/Activity;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/app/Activity;)Ljava/lang/Void;
    .locals 2

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$2(Lcom/conceptglobal/loation/GetLocation;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/16 v0, 0x3e8

    .line 76
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/conceptglobal/loation/GetLocation$LocationControl;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 86
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$3(Lcom/conceptglobal/loation/GetLocation;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$4(Lcom/conceptglobal/loation/GetLocation;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$3(Lcom/conceptglobal/loation/GetLocation;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$4(Lcom/conceptglobal/loation/GetLocation;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_1

    .line 91
    :try_start_0
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$5(Lcom/conceptglobal/loation/GetLocation;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {v0}, Lcom/conceptglobal/loation/GetLocation;->access$3(Lcom/conceptglobal/loation/GetLocation;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$6(Lcom/conceptglobal/loation/GetLocation;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {v0}, Lcom/conceptglobal/loation/GetLocation;->access$4(Lcom/conceptglobal/loation/GetLocation;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:::::::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->this$0:Lcom/conceptglobal/loation/GetLocation;

    invoke-static {p1}, Lcom/conceptglobal/loation/GetLocation;->access$7(Lcom/conceptglobal/loation/GetLocation;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->dialog:Landroid/app/ProgressDialog;

    const-string v1, "Getting Location..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->dialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/conceptglobal/loation/GetLocation$LocationControl$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/loation/GetLocation$LocationControl$1;-><init>(Lcom/conceptglobal/loation/GetLocation$LocationControl;)V

    const/4 v2, -0x1

    const-string v3, "Cancel"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/conceptglobal/loation/GetLocation$LocationControl;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
