.class Lcom/conceptglobal/pmc/fragments/AddFarmer$38;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 5281
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 5284
    instance-of v0, p1, Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5285
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 5287
    :cond_0
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, v0, Lcom/conceptglobal/pmc/fragments/AddFarmer;->_clickId:I

    .line 5288
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5291
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5292
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0110

    .line 5293
    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5294
    const-string v2, "Select Year"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5296
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090131

    .line 5297
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 5298
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$1400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v3}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7300(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/HashMap;

    move-result-object v3

    const/16 v4, 0x4e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/conceptglobal/pmc/model/DynamicFields;

    .line 5300
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    if-lez v3, :cond_1

    .line 5301
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMinValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x79e

    .line 5303
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 5305
    :goto_0
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v3

    if-lez v3, :cond_2

    .line 5306
    invoke-virtual {v2}, Lcom/conceptglobal/pmc/model/DynamicFields;->getMaxValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_1

    .line 5309
    :cond_2
    iget-object v2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v2}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$7400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    :goto_1
    const/4 v2, 0x0

    .line 5312
    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 5313
    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$1;

    invoke-direct {v2, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$1;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$38;)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 5319
    new-instance v2, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$38;Landroid/widget/NumberPicker;Landroid/view/View;)V

    const-string v1, "Done"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5327
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$3;

    invoke-direct {v1, p0}, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$3;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$38;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5333
    new-instance v1, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$4;

    invoke-direct {v1, p0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$4;-><init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$38;Landroid/view/View;)V

    const-string p1, "Clear"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5340
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 5341
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
