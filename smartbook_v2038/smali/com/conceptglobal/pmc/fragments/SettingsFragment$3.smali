.class Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;
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

    .line 112
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 115
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$002(Lcom/conceptglobal/pmc/fragments/SettingsFragment;Z)Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyTicketVisibility()Ljava/lang/String;

    move-result-object v0

    const-string v1, "True"

    invoke-static {p2, v0, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$400(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "Ticker Enabled.."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 120
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyTicketVisibility()Ljava/lang/String;

    move-result-object v0

    const-string v1, "False"

    invoke-static {p2, v0, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/SettingsFragment$3;->this$0:Lcom/conceptglobal/pmc/fragments/SettingsFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/SettingsFragment;->access$400(Lcom/conceptglobal/pmc/fragments/SettingsFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "Ticker Disabled.."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
