.class public Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;


# direct methods
.method public constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Landroid/content/Context;)V
    .locals 0

    .line 3295
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3296
    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;->mContext:Landroid/content/Context;

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

    .line 3352
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$4300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Z)V

    return-void
.end method

.method public saverequired(Z)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 3315
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$4300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Z)V

    .line 3316
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3317
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3318
    const-string v0, "Data has not be saved.\nClick Preview&Save button to save the data."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3319
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface$1;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;)V

    const/4 v1, -0x1

    const-string v2, "Ok"

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3325
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

    .line 3335
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$4300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Z)V

    .line 3336
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 3337
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3338
    const-string v0, "Month plan has not be saved."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3339
    new-instance v0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface$2;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface$2;-><init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$WebAppInterface;)V

    const/4 v1, -0x1

    const-string v2, "Ok"

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3344
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method
