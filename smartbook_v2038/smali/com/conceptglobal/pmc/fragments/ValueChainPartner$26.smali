.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$26;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showDetailsDialog(Lcom/conceptglobal/pmc/model/TerritotyDealerMaster;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

.field final synthetic val$dialogLand:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4876
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$26;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$26;->val$dialogLand:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 4880
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$26;->val$dialogLand:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
