.class Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$2;
.super Ljava/lang/Object;
.source "PictureReporting_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 268
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$000(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValuesBasedItemCode(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 270
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v5}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$100(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDisplayTypeQry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 272
    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/common/Queries;->gettingDropdownValuesBasedItemCodeControlPlot()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    move-object v5, v0

    .line 276
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v3, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;->access$200(Lcom/conceptglobal/pmc/fo/PictureReporting_Expenses;)Landroid/widget/TextView;

    move-result-object v7

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 277
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v2, 0x7f1101b9

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 278
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 279
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
