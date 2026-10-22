.class Lcom/conceptglobal/pmc/fragments/AddRetailer$15;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 2867
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2871
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3102(Lcom/conceptglobal/pmc/fragments/AddRetailer;I)I

    const v0, 0x7f100009

    .line 2872
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2873
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2874
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$3200(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showDialog(I)V

    goto :goto_0

    .line 2876
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$15;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->showDialog(I)V

    :goto_0
    return-void
.end method
