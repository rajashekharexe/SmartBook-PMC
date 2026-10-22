.class Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/SettingsFragment;->initialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$000(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$100(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Z

    move-result v0

    if-ne p1, v0, :cond_2

    .line 77
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$200(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$200(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Sending data to server, Please wait.."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$202(Lcom/conceptglobal/pmc/fragments/SettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1$1;

    invoke-direct {v0, p0}, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1$1;-><init>(Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$400(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "No changes are made"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
