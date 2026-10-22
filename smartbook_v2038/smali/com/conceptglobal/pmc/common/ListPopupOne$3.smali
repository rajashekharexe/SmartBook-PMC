.class Lcom/conceptglobal/pmc/common/ListPopupOne$3;
.super Ljava/lang/Object;
.source "ListPopupOne.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/common/ListPopupOne;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/common/ListPopupOne;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

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
    .locals 0

    .line 110
    :try_start_0
    iget-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$300(Lcom/conceptglobal/pmc/common/ListPopupOne;)Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    move-result-object p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;->getFilter(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$202(Lcom/conceptglobal/pmc/common/ListPopupOne;[[Ljava/lang/String;)[[Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    new-instance p2, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    iget-object p3, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p3}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$200(Lcom/conceptglobal/pmc/common/ListPopupOne;)[[Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;-><init>(Lcom/conceptglobal/pmc/common/ListPopupOne;[[Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$302(Lcom/conceptglobal/pmc/common/ListPopupOne;Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;)Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    .line 112
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$400(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$300(Lcom/conceptglobal/pmc/common/ListPopupOne;)Lcom/conceptglobal/pmc/common/ListPopupOne$ListAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$500(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 114
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$500(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$3;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p2}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$400(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/ListView;

    move-result-object p2

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    const-string p2, "ListPopUp"

    invoke-static {p2, p1}, Lcom/conceptglobal/pmc/utils/PLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
