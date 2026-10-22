.class Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$15;
.super Ljava/lang/Object;
.source "AudianceFarmerSelectionList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;->showRetailerDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

.field final synthetic val$dialogLand:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 941
    iput-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$15;->this$0:Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$15;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 944
    iget-object p1, p0, Lcom/conceptglobal/pmc/fo/AudianceFarmerSelectionList$15;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
