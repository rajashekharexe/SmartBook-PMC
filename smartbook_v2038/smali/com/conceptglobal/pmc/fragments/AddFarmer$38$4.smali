.class Lcom/conceptglobal/pmc/fragments/AddFarmer$38$4;
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

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$38;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5333
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$4;->this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$38;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$4;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5336
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5337
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$38$4;->val$v:Landroid/view/View;

    check-cast p1, Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
