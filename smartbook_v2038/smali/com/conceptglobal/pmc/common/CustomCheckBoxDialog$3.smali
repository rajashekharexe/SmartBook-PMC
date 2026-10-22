.class Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;
.super Ljava/lang/Object;
.source "CustomCheckBoxDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 117
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iput-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 2

    .line 121
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object p3, p2, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->mAdapter:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;->getFilter(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$002(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/util/List;)Ljava/util/List;

    .line 122
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    new-instance p2, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    iget-object p3, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    invoke-static {p3}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->access$000(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;)Ljava/util/List;

    move-result-object p4

    iget-object v0, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->val$tv:Landroid/widget/TextView;

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;-><init>(Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;Ljava/util/List;Landroid/view/View;Landroid/view/View;)V

    iput-object p2, p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->mAdapter:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    .line 123
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object p2, p2, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->mAdapter:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$CustomItemsAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 125
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object p1, p1, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->layout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog$3;->this$0:Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;

    iget-object p2, p2, Lcom/conceptglobal/pmc/common/CustomCheckBoxDialog;->listView:Landroid/widget/ListView;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 128
    const-string p2, "CustomCheckBoxListPopUp"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
