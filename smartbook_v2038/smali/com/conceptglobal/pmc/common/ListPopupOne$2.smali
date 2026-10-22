.class Lcom/conceptglobal/pmc/common/ListPopupOne$2;
.super Ljava/lang/Object;
.source "ListPopupOne.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 97
    iput-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$2;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$2;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-static {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->access$000(Lcom/conceptglobal/pmc/common/ListPopupOne;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$2;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 102
    iget-object p1, p0, Lcom/conceptglobal/pmc/common/ListPopupOne$2;->this$0:Lcom/conceptglobal/pmc/common/ListPopupOne;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/common/ListPopupOne;->dismiss()V

    return-void
.end method
