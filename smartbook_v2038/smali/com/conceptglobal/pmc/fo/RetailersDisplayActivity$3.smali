.class Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$3;
.super Ljava/lang/Object;
.source "RetailersDisplayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 141
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 142
    sget-object p2, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mDuplicate:Ljava/util/List;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mDuplicate:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 143
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mDuplicate:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/conceptglobal/pmc/model/PmcRetailersModel;

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/PmcRetailersModel;->getRetailercode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/conceptglobal/pmc/adapter/RetailerDetailsAdapter;->mDuplicate:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/PmcRetailersModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/PmcRetailersModel;->getContactName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERID()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-static {p4}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->access$400(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/conceptglobal/pmc/model/PmcRetailersModel;

    invoke-virtual {p4}, Lcom/conceptglobal/pmc/model/PmcRetailersModel;->getRetailercode()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getInstance()Lcom/conceptglobal/pmc/utils/ConstantDeclarations;

    move-result-object p2

    invoke-virtual {p2}, Lcom/conceptglobal/pmc/utils/ConstantDeclarations;->getKEYRETAILERNAME()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-static {p4}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->access$400(Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/PmcRetailersModel;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/PmcRetailersModel;->getContactName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :goto_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    const-string p3, "ok"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity$3;->this$0:Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/RetailersDisplayActivity;->finish()V

    return-void
.end method
