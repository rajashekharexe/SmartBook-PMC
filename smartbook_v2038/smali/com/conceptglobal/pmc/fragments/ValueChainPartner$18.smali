.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$18;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->showGoBackDialog()V
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

    .line 2753
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$18;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2756
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2757
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$18;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-virtual {p1}, Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->finish()V

    return-void
.end method
