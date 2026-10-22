.class Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;
.super Ljava/lang/Object;
.source "RetailersSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->showMibileSearchDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

.field final synthetic val$dialogLand:Landroid/app/Dialog;

.field final synthetic val$etMobile:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Landroid/app/Dialog;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1190
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->val$dialogLand:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->val$etMobile:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1193
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->hideInputKeyboard(Landroid/content/Context;)V

    .line 1194
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/conceptglobal/pmc/utils/UtilDeclarations;->isOnline(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1195
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2700(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V

    .line 1196
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1198
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2800(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1199
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->this$0:Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->val$etMobile:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;->access$2900(Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment;Ljava/lang/String;)V

    .line 1200
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 1202
    :cond_1
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/RetailersSearchFragment$13;->val$etMobile:Landroid/widget/EditText;

    const-string v0, "Please enter 10 digit mobile number"

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
