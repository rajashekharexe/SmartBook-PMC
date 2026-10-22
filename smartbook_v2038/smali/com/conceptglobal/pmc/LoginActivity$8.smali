.class Lcom/conceptglobal/pmc/LoginActivity$8;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->askForLiveORTraining(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1095
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$8;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    .line 1098
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1099
    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$8;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 1101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1102
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1104
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$8;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$900(Lcom/conceptglobal/pmc/LoginActivity;)V

    goto :goto_0

    .line 1107
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1108
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$8;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$8;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    const v2, 0x7f1000fb

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
