.class Lcom/conceptglobal/pmc/fragments/AddRetailer$30;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

.field final synthetic val$dialogLand:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5704
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$30;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$30;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 5708
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$30;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
