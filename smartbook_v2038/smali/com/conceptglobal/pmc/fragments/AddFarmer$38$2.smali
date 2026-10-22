.class Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer$38;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$38;

.field final synthetic val$numberPicker:Landroid/widget/NumberPicker;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$38;Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5319
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;->this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$38;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;->val$numberPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 5322
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onClick: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AddFarmer"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5323
    iget-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;->val$v:Landroid/view/View;

    check-cast p2, Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$2;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5324
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
