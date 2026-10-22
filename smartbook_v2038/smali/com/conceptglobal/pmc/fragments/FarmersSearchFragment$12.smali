.class Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;
.super Ljava/lang/Object;
.source "FarmersSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->showMibileSearchDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$etMobile:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1247
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->val$etMobile:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1250
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1255
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$2500(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1256
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->this$0:Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;->access$2600(Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment;Ljava/lang/String;)V

    .line 1257
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1259
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FarmersSearchFragment$12;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Please enter 10 digit mobile number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
