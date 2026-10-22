.class Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->initialization()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->access$002(Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;Z)Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 122
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->updateCameraSwitchStatus(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyTicketVisibility()Ljava/lang/String;

    move-result-object v0

    const-string v1, "True"

    invoke-static {p2, v0, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->access$100(Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "Custom Camera Enabled.."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 126
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->updateCameraSwitchStatus(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->executeRawQueryInDB(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKeyTicketVisibility()Ljava/lang/String;

    move-result-object v0

    const-string v1, "False"

    invoke-static {p2, v0, v1}, Lcom/conceptglobal/pmc/utils/SharedPrefManager;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;->access$100(Lcom/conceptglobal/pmc/fragments/CameraSettingsFragment;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "Custom Camera Disabled.."

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 133
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_1
    :goto_1
    return-void
.end method
