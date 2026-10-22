.class Lcom/conceptglobal/pmc/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/LoginActivity;->showLanguageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/LoginActivity;

.field final synthetic val$languageIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/LoginActivity;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 665
    iput-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->val$languageIds:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 668
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$400(Lcom/conceptglobal/pmc/LoginActivity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 670
    :try_start_0
    new-instance p1, Lcom/conceptglobal/pmc/utils/SharedPrefManager;

    invoke-direct {p1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;-><init>()V

    .line 671
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$500(Lcom/conceptglobal/pmc/LoginActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->val$languageIds:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->setPMCLanguage(Landroid/content/Context;I)V

    .line 673
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    iget-object v0, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->val$languageIds:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/LoginActivity;->access$600(Lcom/conceptglobal/pmc/LoginActivity;I)V

    .line 674
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$700(Lcom/conceptglobal/pmc/LoginActivity;)V

    .line 675
    iget-object p1, p0, Lcom/conceptglobal/pmc/LoginActivity$3;->this$0:Lcom/conceptglobal/pmc/LoginActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/LoginActivity;->access$800(Lcom/conceptglobal/pmc/LoginActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 677
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    const-string p2, "Login Activity"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
