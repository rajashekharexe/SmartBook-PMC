.class Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$1;
.super Ljava/lang/Object;
.source "FunctionalStateFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->access$000(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$1;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->access$100(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
