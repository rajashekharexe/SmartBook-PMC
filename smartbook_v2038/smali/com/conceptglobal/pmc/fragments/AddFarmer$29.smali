.class Lcom/conceptglobal/pmc/fragments/AddFarmer$29;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;->setError(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

.field final synthetic val$editText:Landroid/widget/TextView;

.field final synthetic val$errMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4153
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$29;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    iput-object p2, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$29;->val$editText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$29;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4157
    iget-object v0, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$29;->val$editText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$29;->val$errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
