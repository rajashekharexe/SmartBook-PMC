.class Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion$1;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;)V
    .locals 0

    .line 3929
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion$1;->this$1:Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3931
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3932
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion$1;->this$1:Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->finish()V

    .line 3933
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion$1;->this$1:Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/AddRetailer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$4600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V

    return-void
.end method
