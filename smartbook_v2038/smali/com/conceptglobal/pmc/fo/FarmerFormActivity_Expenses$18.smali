.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$18;
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

    .line 2517
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$18;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2521
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$18;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->access$3102(Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;I)I

    .line 2522
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$18;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showDialog(I)V

    return-void
.end method
