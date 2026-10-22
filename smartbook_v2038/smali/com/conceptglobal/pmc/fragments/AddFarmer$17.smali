.class Lcom/conceptglobal/pmc/fragments/AddFarmer$17;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 2440
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2444
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2902(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I

    .line 2445
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2202(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f100009

    .line 2446
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 2447
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$3000(Lcom/conceptglobal/pmc/fragments/AddFarmer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showDialog(I)V

    goto :goto_0

    .line 2450
    :cond_0
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$17;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showDialog(I)V

    :goto_0
    return-void
.end method
