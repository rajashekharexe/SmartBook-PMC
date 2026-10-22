.class Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;
.super Ljava/lang/Object;
.source "AddFarmerDraftListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 528
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_confirmDeletionFarmerDialog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$100(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 531
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_yesText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1$1;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1$1;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1$2;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1$2;-><init>(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 571
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter$1;->this$0:Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;->access$000(Lcom/conceptglobal/pmc/adapter/AddFarmerDraftListAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->makeTabletDialogTextlarge(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method
