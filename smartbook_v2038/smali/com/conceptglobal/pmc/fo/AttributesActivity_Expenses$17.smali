.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$17;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V
    .locals 0

    .line 2686
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$17;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2690
    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$17;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$3402(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;I)I

    .line 2691
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$17;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->showDialog(I)V

    return-void
.end method
