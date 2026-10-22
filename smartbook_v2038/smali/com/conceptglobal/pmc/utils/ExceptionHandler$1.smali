.class Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;
.super Ljava/lang/Thread;
.source "ExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/ExceptionHandler;->showAlerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 112
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 121
    new-instance v1, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1$1;-><init>(Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;)V

    const-string v2, "Ok"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    const-string v1, "An error has occured, Please Re-Login"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/conceptglobal/pmc/utils/ExceptionHandler$1;->this$0:Lcom/conceptglobal/pmc/utils/ExceptionHandler;

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/ExceptionHandler;->access$000(Lcom/conceptglobal/pmc/utils/ExceptionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    .line 176
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
