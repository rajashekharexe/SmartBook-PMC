.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;
.super Landroid/webkit/WebChromeClient;
.source "AttributesActivity_Expenses.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 3205
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 3210
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->mProgress:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    .line 3211
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->mProgress:Landroid/app/ProgressDialog;

    .line 3212
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3213
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 3215
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->mProgress:Landroid/app/ProgressDialog;

    const-string v0, "Loading "

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_2

    .line 3217
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->mProgress:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3218
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    const/4 p1, 0x0

    .line 3219
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$25;->mProgress:Landroid/app/ProgressDialog;

    :cond_2
    return-void
.end method
