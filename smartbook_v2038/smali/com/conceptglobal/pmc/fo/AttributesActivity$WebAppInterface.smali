.class public Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;
.super Ljava/lang/Object;
.source "AttributesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity;Landroid/content/Context;)V
    .locals 0

    .line 4190
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4191
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;->mContext:Landroid/content/Context;

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
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4247
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5500(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V

    return-void
.end method

.method public saverequired(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 4210
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5500(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V

    .line 4211
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 4212
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4213
    const-string v0, "Data has not be saved.\nClick Preview&Save button to save the data."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4214
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;)V

    const/4 v1, -0x1

    const-string v2, "Ok"

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4220
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method public saverequiredfordistributor(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 4230
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity;->access$5500(Lcom/conceptglobal/pmc/fo/AttributesActivity;Z)V

    .line 4231
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 4232
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4233
    const-string v0, "Month plan has not be saved."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4234
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface$2;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity$WebAppInterface;)V

    const/4 v1, -0x1

    const-string v2, "Ok"

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4239
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
