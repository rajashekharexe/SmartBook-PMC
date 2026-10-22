.class Lcom/conceptglobal/pmc/fragments/AddRetailer$11;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showAddLandDialog(Lcom/conceptglobal/pmc/model/DealerLandDetails;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;ILcom/conceptglobal/pmc/model/DealerLandDetails;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1786
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iput p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$pos:I

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    iput-object p4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$from:Ljava/lang/String;

    iput-object p5, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1789
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1790
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1794
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1795
    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 1796
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v0, :cond_5

    .line 1804
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 1808
    :cond_1
    iget-object v4, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v4}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$pos:I

    invoke-static {v4, p1, v5, v6}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2100(Lcom/conceptglobal/pmc/fragments/AddRetailer;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1809
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1900(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "Duplicate plot name"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1810
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Plot name already exist."

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 1814
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {v2, p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->setLandname(Ljava/lang/String;)V

    .line 1817
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->setLatitude(Ljava/lang/String;)V

    .line 1818
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {p1, v1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->setLongitude(Ljava/lang/String;)V

    .line 1819
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->setContactid(Ljava/lang/String;)V

    .line 1821
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1822
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2300(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->setGPSTimeStamp(Ljava/lang/String;)V

    .line 1825
    :cond_3
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getMappingId()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$from:Ljava/lang/String;

    const-string v0, "new"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1826
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1828
    :cond_4
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$2400(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$farmerLandDetails:Lcom/conceptglobal/pmc/model/DealerLandDetails;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/DealerLandDetails;->getMappingId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1831
    :try_start_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1835
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1837
    :goto_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    .line 1838
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    .line 1805
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_locationIsMandateError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 1797
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$000(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$11;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$500(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Lcom/conceptglobal/pmc/database/GetDataFromDB;

    move-result-object v0

    invoke-static {}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getInstance()Lcom/conceptglobal/pmc/utils/LabelUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/utils/LabelUtils;->getPmc_plot_name_toast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/conceptglobal/pmc/database/GetDataFromDB;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method
