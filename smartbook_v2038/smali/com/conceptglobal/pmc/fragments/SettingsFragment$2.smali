.class Lcom/conceptglobal/pmc/fragments/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 94
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$002(Lcom/conceptglobal/pmc/fragments/SettingsFragment;Z)Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 99
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$400(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "Notifications Enabled.."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 101
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$400(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "Notification Disabled.."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
