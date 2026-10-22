.class Lcom/conceptglobal/pmc/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/BaseActivity;->showDeveloperOptionsAlertDialog(Ljava/lang/String;)V
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

    .line 139
    iput-object p1, p0, Lcom/conceptglobal/pmc/BaseActivity$2;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 142
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 143
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/conceptglobal/pmc/BaseActivity$2;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
