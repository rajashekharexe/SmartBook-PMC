.class Lcom/conceptglobal/pmc/fragments/AddFarmer$13;
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

    .line 1993
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1997
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1999
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$600(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingHybrieds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    .line 2000
    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1900(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/widget/TextView;

    move-result-object v6

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 2001
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2002
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 2003
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2005
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$13;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2100(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
