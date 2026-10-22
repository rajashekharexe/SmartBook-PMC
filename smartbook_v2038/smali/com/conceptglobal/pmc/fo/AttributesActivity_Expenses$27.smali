.class Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$27;
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

    .line 3260
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$27;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3262
    iget-object p2, p0, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses$27;->this$0:Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;

    invoke-static {p2}, Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;->access$4400(Lcom/conceptglobal/pmc/fo/AttributesActivity_Expenses;)V

    .line 3263
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
