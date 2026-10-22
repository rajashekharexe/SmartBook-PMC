.class Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;
.super Ljava/lang/Object;
.source "CustomCheckBoxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->init(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

.field final synthetic val$tv:Landroid/widget/TextView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iput-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->val$tv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->val$tv:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 88
    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->val$view:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->val$view:Landroid/view/View;

    const v1, 0x7f100001

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->val$view:Landroid/view/View;

    const v1, 0x7f100002

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 95
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$1;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->dismiss()V

    return-void
.end method
