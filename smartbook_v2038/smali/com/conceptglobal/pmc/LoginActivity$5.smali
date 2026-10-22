.class Lcom/conceptglobal/pmc/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->showAlertForLive(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$5;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 710
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 711
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$5;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 712
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$5;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$900(Lcom/conceptglobal/pmc/LoginActivity;)V

    goto :goto_0

    .line 714
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$5;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$5;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const v0, 0x7f1000fb

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
