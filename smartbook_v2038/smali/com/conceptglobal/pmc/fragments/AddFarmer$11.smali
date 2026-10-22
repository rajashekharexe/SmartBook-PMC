.class Lcom/conceptglobal/pmc/fragments/AddFarmer$11;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 1939
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1944
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1945
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1947
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Sowing window"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v4, "ProfarmSowingWindow"

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDropdownValuesLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 1948
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1949
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 1950
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1952
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1955
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1956
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2202(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1957
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showDialog(I)V

    :cond_1
    :goto_0
    return-void
.end method
