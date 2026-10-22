.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$28;
.super Ljava/lang/Object;
.source "AttributesActivity_Expenses.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->loadData()V
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

    .line 3267
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$28;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 3269
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$28;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$4300(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;Z)V

    .line 3270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
