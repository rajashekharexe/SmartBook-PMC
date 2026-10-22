.class Lcom/conceptglobal/pmc/fragments/AddRetailer$10;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showAddLandDialog(Lcom/conceptglobal/pmc/model/DealerLandDetails;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;)V
    .locals 0

    .line 1725
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$10;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1738
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$10;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1600(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$10;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    invoke-static {v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1700(Lcom/conceptglobal/pmc/fragments/AddRetailer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/conceptglobal/pmc/fragments/AddRetailer;->access$1800(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method
