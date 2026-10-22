.class Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$7;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->showAlertDialogLogout(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 690
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 691
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 692
    const-string p2, "Action.Finish"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string p2, "Finish"

    const-string v0, "finish"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-object p2, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 696
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment$7;->this$0:Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;->access$100(Lcom/conceptglobal/pmc/promotions/activity/HomeFragment;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
