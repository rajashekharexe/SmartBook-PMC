.class Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;
.super Ljava/lang/Object;
.source "CategoryFilterDialogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iput p2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 163
    :try_start_0
    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/common/Queries;->getInstance()Lcom/conceptglobal/pmc/common/Queries;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v1, v1, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    iget v2, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/common/Queries;->getCategoryDetails(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getFarmerAssociatedBrands(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    new-instance p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {v0}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Landroid/content/Context;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v3

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_selectText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    iget-object v3, v3, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->masters:Ljava/util/List;

    iget v4, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;

    invoke-virtual {v3}, Lcom/conceptglobal/pmc/promotions/models/CategoryMaster;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v5, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->tvCategoryNameHeader:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    check-cast v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;

    iget-object v6, v0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$CategoryVH;->tvSelectedIds:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x14

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;-><init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;III)V

    .line 171
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f1101b9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 172
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->show()V

    .line 173
    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_2

    .line 168
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter$3;->this$0:Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;

    invoke-static {p1}, Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;->access$100(Lcom/conceptglobal/pmc/promotions/adapters/CategoryFilterDialogAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getInstance()Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_noDataFound()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
