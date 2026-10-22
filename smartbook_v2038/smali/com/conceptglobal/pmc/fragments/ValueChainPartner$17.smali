.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$17;
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

    .line 2738
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$17;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2740
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
