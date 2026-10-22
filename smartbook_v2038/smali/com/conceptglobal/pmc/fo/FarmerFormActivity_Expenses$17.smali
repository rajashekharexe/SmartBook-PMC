.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$17;
.super Ljava/lang/Object;
.source "FarmerFormActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;)V
    .locals 0

    .line 2507
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$17;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 2511
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$17;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$3102(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I

    .line 2512
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$17;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$3202(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 2513
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$17;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showDialog(I)V

    return-void
.end method
