.class Lcom/conceptglobal/pmc/BaseActivity$5;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/BaseActivity;->showAlertDialogLogout(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/BaseActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/BaseActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/conceptglobal/pmc/BaseActivity$5;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 216
    const-string p2, "Action.Finish"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string p2, "Finish"

    const-string v0, "finish"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object p2, p0, Lcom/conceptglobal/pmc/BaseActivity$5;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    iget-object p1, p0, Lcom/conceptglobal/pmc/BaseActivity$5;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/BaseActivity$5;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    const-class v1, Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
