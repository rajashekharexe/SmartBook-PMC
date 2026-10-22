.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$9;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->addOperationsDynamicLayout(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/conceptglobal/pmc/model/AttributeModel;Landroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

.field final synthetic val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Lcom/conceptglobal/pmc/model/AttributeModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1431
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$9;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1434
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$9;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    iget-object v0, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$9;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v0}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeId()I

    move-result v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$9;->val$objAttribute:Lcom/conceptglobal/pmc/model/AttributeModel;

    invoke-virtual {v1}, Lcom/conceptglobal/pmc/model/AttributeModel;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$1900(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;ILjava/lang/String;)V

    return-void
.end method
