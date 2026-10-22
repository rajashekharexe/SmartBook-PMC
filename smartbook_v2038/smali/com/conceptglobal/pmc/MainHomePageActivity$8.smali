.class Lcom/conceptglobal/pmc/MainHomePageActivity$8;
.super Ljava/lang/Object;
.source "MainHomePageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/MainHomePageActivity;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$pass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    iput-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->val$pass:Ljava/lang/String;

    iput-object p4, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 679
    iget-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 680
    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->val$pass:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 681
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 682
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$300(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_delDatabaseTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$300(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_dbDelConfirmDialog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DBDelete"

    invoke-static {p1, p1, p2, v0, v1}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$400(Lcom/conceptglobal/pmc/MainHomePageActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->val$ctx:Landroid/content/Context;

    iget-object p2, p0, Lcom/conceptglobal/pmc/MainHomePageActivity$8;->this$0:Lcom/conceptglobal/pmc/MainHomePageActivity;

    invoke-static {p2}, Lcom/conceptglobal/pmc/MainHomePageActivity;->access$300(Lcom/conceptglobal/pmc/MainHomePageActivity;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_invalidPasswordError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
