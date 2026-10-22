.class Lcom/conceptglobal/pmc/fo/PictureReportingExpences$2;
.super Ljava/lang/Object;
.source "PictureReportingExpences.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 240
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->access$300(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 242
    :try_start_0
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->access$300(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v1

    const-string v4, "ExpType"

    invoke-virtual {v1, v4}, Lcom/conceptglobal/pmc/common/Queries;->getDropdownValuesBasedItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/PictureReportingExpences$2;->this$0:Lcom/conceptglobal/pmc/fo/PictureReportingExpences;

    .line 243
    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/PictureReportingExpences;->access$300(Lcom/conceptglobal/pmc/fo/PictureReportingExpences;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 244
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 245
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 246
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
