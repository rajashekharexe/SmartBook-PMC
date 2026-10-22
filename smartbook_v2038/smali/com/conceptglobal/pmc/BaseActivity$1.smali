.class Lcom/conceptglobal/pmc/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/BaseActivity;->showTimeSettingsAlertDialog(Ljava/lang/String;)V
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

    .line 124
    iput-object p1, p0, Lcom/conceptglobal/pmc/BaseActivity$1;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 127
    iget-object p2, p0, Lcom/conceptglobal/pmc/BaseActivity$1;->this$0:Lcom/conceptglobal/pmc/BaseActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
