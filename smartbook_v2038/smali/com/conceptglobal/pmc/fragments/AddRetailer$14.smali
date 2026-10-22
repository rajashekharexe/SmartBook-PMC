.class Lcom/conceptglobal/pmc/fragments/AddRetailer$14;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showAddCropSalesDialog(Ljava/lang/String;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private dealerCropMapping:Lcom/conceptglobal/pmc/model/DealerCropMapping;

.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

.field final synthetic val$dialogCropSales:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2239
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->val$dialogCropSales:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 2244
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 2245
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2800(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2246
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2247
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    .line 2249
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v0, :cond_6

    .line 2251
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 2253
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget v4, v4, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2254
    :cond_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterSalesDetailsToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 2256
    :cond_3
    new-instance v3, Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-direct {v3}, Lcom/conceptglobal/pmc/model/DealerCropMapping;-><init>()V

    iput-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->dealerCropMapping:Lcom/conceptglobal/pmc/model/DealerCropMapping;

    .line 2259
    :try_start_0
    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->filterfromlistCrops(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2260
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 2261
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Crop/Hybrid already exists, please delete old entry to continue."

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 2264
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->dealerCropMapping:Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->setCropSales(D)V

    .line 2265
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->dealerCropMapping:Lcom/conceptglobal/pmc/model/DealerCropMapping;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->setContactId(Ljava/lang/String;)V

    .line 2266
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->dealerCropMapping:Lcom/conceptglobal/pmc/model/DealerCropMapping;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->setCropId(I)V

    .line 2267
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->dealerCropMapping:Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->setCropName(Ljava/lang/String;)V

    .line 2268
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iget p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer;->isextrasales:I

    if-ne p1, v5, :cond_5

    .line 2269
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->dealerCropMapping:Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/model/DealerCropMapping;->setCropName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2272
    :try_start_2
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2274
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->dealerCropMapping:Lcom/conceptglobal/pmc/model/DealerCropMapping;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2275
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 2276
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->val$dialogCropSales:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2280
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2252
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_enterSalesDetailsToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 2250
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$14;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_pleaseSelectCropToast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method
