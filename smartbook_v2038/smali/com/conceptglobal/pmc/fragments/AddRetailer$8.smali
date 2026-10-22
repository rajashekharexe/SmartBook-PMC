.class Lcom/conceptglobal/pmc/fragments/AddRetailer$8;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 1573
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$8;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1576
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1577
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$8;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Lcom/conceptglobal/pmc/fragments/AddRetailer;->_clickId:I

    .line 1580
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1581
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$8;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v0

    .line 1582
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1583
    const-string v0, "select VillageId, VillageName  from VillageMaster "

    :cond_1
    move-object v4, v0

    .line 1607
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$8;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$8;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/conceptglobal/pmc/common/ListPopupOne;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V

    .line 1608
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1609
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 1610
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
