.class Lcom/conceptglobal/pmc/fragments/ValueChainPartner$19;
.super Ljava/lang/Object;
.source "ValueChainPartner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/ValueChainPartner;->setText(Landroid/widget/EditText;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/ValueChainPartner;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4575
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$19;->this$0:Lcom/conceptglobal/pmc/fragments/ValueChainPartner;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$19;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$19;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4578
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$19;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/ValueChainPartner$19;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
