.class Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$1;
.super Ljava/lang/Object;
.source "FarmerWiseCropsAcerages.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;

.field final synthetic val$holder:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;

    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$1;->val$holder:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$1;->this$0:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;

    invoke-static {v0}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->access$600(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$1;->val$holder:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;

    invoke-static {v1}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;->access$500(Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages$ViewHolder;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->setAceragesNew(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
