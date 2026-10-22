.class Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;
.super Ljava/lang/Object;
.source "CustomCheckBoxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 275
    check-cast p1, Landroid/widget/CheckBox;

    .line 276
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v0}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$200(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$202(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;I)I

    .line 280
    :cond_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 282
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v3, v3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v3}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$200(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)I

    move-result v3

    if-le v0, v3, :cond_1

    .line 283
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_multipleCheckBoxLimitDialog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v4, v4, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v4}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$200(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v4

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_multipleCheckBoxItemsDialog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$300(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 286
    :cond_1
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 287
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    iget v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/BrandsModel;

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v0, v0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    iget v3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->val$position:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->setBrandSelected(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 297
    :goto_0
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 298
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v3, v3, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    iget v4, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/model/BrandsModel;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/model/BrandsModel;->getBrandId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 303
    :cond_5
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->brandsList:Ljava/util/List;

    iget v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/BrandsModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/BrandsModel;->setBrandSelected(Ljava/lang/String;)V

    .line 306
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    :goto_2
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    if-lez v1, :cond_6

    .line 310
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_6
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 319
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    .line 320
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->setcontext:Landroid/content/Context;

    const v0, 0x7f1002be

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 321
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->access$400(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectOneDropDownTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 323
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$100(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 325
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->access$400(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/conceptglobal/pmc/common/Items;->selectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Selected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 327
    :cond_9
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->access$400(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_3
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->access$400(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f100001

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 330
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->access$400(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f100002

    invoke-virtual {v1, v2, p1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->access$500(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter$1;->this$1:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-static {v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->access$500(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "brands "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Custom Test"

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "ids "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
