.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$12;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;)V
    .locals 0

    .line 2507
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$12;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2511
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$12;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->access$2102(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;I)I

    .line 2512
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$12;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showDialog(I)V

    return-void
.end method
