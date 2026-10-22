.class Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$21;
.super Ljava/lang/Object;
.source "AttributesTableViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->showTimeSettingsAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;)V
    .locals 0

    .line 3257
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 3260
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity$21;->this$0:Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DATE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/fo/AttributesTableViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 3261
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
