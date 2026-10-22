.class Lcom/conceptglobal/pmc/RegistrationActivity$3;
.super Ljava/lang/Object;
.source "RegistrationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/RegistrationActivity;->showDetailsToUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

.field final synthetic val$dialogUserDetails:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/RegistrationActivity;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 741
    iput-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$3;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/RegistrationActivity$3;->val$dialogUserDetails:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 745
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$3;->val$dialogUserDetails:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 746
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity$3;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    const-class v1, Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 747
    const-string v0, "IsRegistrationSuccess"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 748
    iget-object v0, p0, Lcom/conceptglobal/pmc/RegistrationActivity$3;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 749
    iget-object p1, p0, Lcom/conceptglobal/pmc/RegistrationActivity$3;->this$0:Lcom/conceptglobal/pmc/RegistrationActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/RegistrationActivity;->finish()V

    return-void
.end method
