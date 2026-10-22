.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

.field final synthetic val$editText:Landroid/widget/TextView;

.field final synthetic val$errMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4584
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;->val$editText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4587
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;->val$editText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 4588
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;->val$editText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;->val$errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 4589
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$20;->val$editText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method
