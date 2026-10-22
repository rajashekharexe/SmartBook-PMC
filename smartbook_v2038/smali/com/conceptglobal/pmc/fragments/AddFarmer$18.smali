.class Lcom/conceptglobal/pmc/fragments/AddFarmer$18;
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

    .line 2455
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$18;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2459
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$18;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$2902(Lcom/conceptglobal/pmc/fragments/AddFarmer;I)I

    .line 2460
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$18;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->showDialog(I)V

    return-void
.end method
