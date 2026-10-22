.class Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;
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
.method constructor <init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iput-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 104
    const-string p1, ""

    const/4 v0, 0x0

    :cond_0
    :goto_0
    sget-object v1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    .line 106
    sget-object v1, Lcom/conceptglobal/pmc/common/Items;->selectedItemIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;->val$view:Landroid/view/View;

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 114
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$2;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->dismiss()V

    return-void
.end method
