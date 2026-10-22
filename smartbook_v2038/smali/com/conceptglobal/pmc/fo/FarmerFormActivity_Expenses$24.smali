.class Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$24;
.super Ljava/lang/Object;
.source "FarmerFormActivity_Expenses.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->showGoBackDialog()V
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

    .line 2939
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$24;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2942
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2943
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses$24;->this$0:Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fo/FarmerFormActivity_Expenses;->finish()V

    return-void
.end method
