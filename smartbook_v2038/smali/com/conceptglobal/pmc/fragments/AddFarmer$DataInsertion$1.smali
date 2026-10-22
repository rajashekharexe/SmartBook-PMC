.class Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion$1;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;)V
    .locals 0

    .line 4394
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion$1;->this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 4396
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4397
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion$1;->this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->finish()V

    .line 4398
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion$1;->this$1:Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;

    iget-object p1, p1, Lcom/conceptglobal/pmc/fragments/AddFarmer$DataInsertion;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$5400(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    return-void
.end method
