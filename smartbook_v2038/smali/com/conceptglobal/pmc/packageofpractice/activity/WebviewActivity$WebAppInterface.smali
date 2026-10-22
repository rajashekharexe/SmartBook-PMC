.class public Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;Landroid/content/Context;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dataSaved(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public moveToVistCompleatepage(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public saverequired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v1, "feed"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string p1, "consumed"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string p1, "sample"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string p1, "nooffish"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 169
    const-string p2, "Data"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 170
    iget-object p2, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object p1, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;->finish()V

    return-void
.end method

.method public saverequiredfordistributor(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 199
    const-string v0, "Month plan has not be saved."

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v0, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface$1;-><init>(Lcom/conceptglobal/pmc/packageofpractice/activity/WebviewActivity$WebAppInterface;)V

    const/4 v1, -0x1

    const-string v2, "Ok"

    invoke-virtual {p1, v1, v2, v0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
