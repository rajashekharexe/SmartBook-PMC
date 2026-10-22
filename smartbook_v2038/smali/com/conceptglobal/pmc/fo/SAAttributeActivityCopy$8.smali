.class Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$8;
.super Ljava/lang/Object;
.source "SAAttributeActivityCopy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$8;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 778
    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$8;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$600(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/DynamicFields;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DynamicFields;->getDbquery()Ljava/lang/String;

    move-result-object v4

    .line 779
    new-instance v0, Lcom/conceptglobal/pmc/common/ListPopupOne;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$8;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v1

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy$8;->this$0:Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;->access$700(Lcom/conceptglobal/pmc/fo/SAAttributeActivityCopy;)Ljava/util/ArrayList;

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

    .line 780
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v1, 0x7f1101b9

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 781
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->show()V

    .line 782
    invoke-virtual {v0}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
