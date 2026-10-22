.class Lcom/conceptglobal/pmc/fo/MBAActivity$11;
.super Ljava/lang/Object;
.source "MBAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/MBAActivity;->showAddCropDialog(Ljava/lang/String;FLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/MBAActivity;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 760
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 762
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1500(Lcom/conceptglobal/pmc/fo/MBAActivity;)Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValues(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1600(Lcom/conceptglobal/pmc/fo/MBAActivity;)Landroid/widget/TextView;

    move-result-object v6

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 763
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 764
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 765
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 767
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/MBAActivity$11;->this$0:Lcom/conceptglobal/pmc/fo/MBAActivity;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/MBAActivity;->access$1700(Lcom/conceptglobal/pmc/fo/MBAActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
