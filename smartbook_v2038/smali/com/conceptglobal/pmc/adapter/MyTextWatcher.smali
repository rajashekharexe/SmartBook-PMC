.class Lcom/conceptglobal/pmc/adapter/MyTextWatcher;
.super Ljava/lang/Object;
.source "FarmerWiseCropsAcerages.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field adapter:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;

.field editTextnewvalues:Landroid/widget/EditText;

.field listCropAcerages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropAcerages;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field position:I

.field private view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;ILandroid/content/Context;Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/conceptglobal/pmc/model/FarmerCropAcerages;",
            ">;I",
            "Landroid/content/Context;",
            "Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;",
            ")V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->view:Landroid/view/View;

    .line 125
    iput-object p2, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->listCropAcerages:Ljava/util/List;

    .line 126
    iput p3, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->position:I

    .line 127
    iput-object p4, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->mContext:Landroid/content/Context;

    .line 128
    iput-object p5, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->adapter:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->listCropAcerages:Ljava/util/List;

    iget p2, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    iget-object p2, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->editTextnewvalues:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->setAceragesNew(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->adapter:Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/adapter/FarmerWiseCropsAcerages;->notifyDataSetChanged()V

    .line 139
    iget-object p1, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "val--"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->listCropAcerages:Ljava/util/List;

    iget p4, p0, Lcom/conceptglobal/pmc/adapter/MyTextWatcher;->position:I

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;

    invoke-virtual {p3}, Lcom/conceptglobal/pmc/model/FarmerCropAcerages;->getAceragesNew()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
