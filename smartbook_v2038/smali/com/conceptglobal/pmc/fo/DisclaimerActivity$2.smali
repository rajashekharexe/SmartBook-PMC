.class Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;
.super Ljava/lang/Object;
.source "DisclaimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->showAlertCancel(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    iput p2, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string p2, "select villageName from pmcFarmerDetails where farmerId="

    const-string v0, "Update pmcFarmerDetails set isActive=\'false\'  ,isVisited=\'true\' where farmerId= "

    const-string v1, "Update  pmcFarmerDetails set Field1=\'0\' , isVisited=\'true\' where farmerId= "

    .line 119
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 120
    iget p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->val$event:I

    const/4 v2, 0x1

    const-string v3, "DisclaimerActivity"

    const-string v4, ""

    if-eq p1, v2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto/16 :goto_3

    .line 143
    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->access$000(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updatearmer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    const-class v1, Lcom/conceptglobal/pmc/SyncPMC;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    const-class v1, Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->finish()V

    goto/16 :goto_3

    .line 123
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->access$000(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/database/InsertDataIntoDB;->updatearmer(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->access$000(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->access$102(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    invoke-static {v3, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 131
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    const-class v1, Lcom/conceptglobal/pmc/SyncPMC;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 133
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    const-class v0, Lcom/conceptglobal/pmc/fo/FarmerSelectionActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGENAME()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->access$100(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYVILLAGEID()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->access$200(Lcom/conceptglobal/pmc/fo/DisclaimerActivity;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 136
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    :goto_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/DisclaimerActivity$2;->this$0:Lcom/conceptglobal/pmc/fo/DisclaimerActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/DisclaimerActivity;->finish()V

    return-void
.end method
