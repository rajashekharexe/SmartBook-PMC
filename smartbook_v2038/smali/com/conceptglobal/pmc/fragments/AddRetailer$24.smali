.class Lcom/conceptglobal/pmc/fragments/AddRetailer$24;
.super Ljava/lang/Object;
.source "AddRetailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddRetailer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

.field final synthetic val$editText:Landroid/widget/TextView;

.field final synthetic val$errMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddRetailer;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5412
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;->this$0:Lcom/conceptglobal/pmc/fragments/AddRetailer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;->val$editText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5415
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;->val$editText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 5416
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;->val$editText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;->val$errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 5417
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddRetailer$24;->val$editText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method
