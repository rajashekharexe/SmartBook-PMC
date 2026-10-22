.class Lcom/conceptglobal/pmc/utils/UtilDeclarations$5;
.super Ljava/lang/Object;
.source "UtilDeclarations.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/utils/UtilDeclarations;->showDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 955
    iput-object p1, p0, Lcom/conceptglobal/pmc/utils/UtilDeclarations$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 959
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 960
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 961
    const-string p2, "Action.Finish"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string p2, "Finish"

    const-string v0, "finish"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    iget-object p2, p0, Lcom/conceptglobal/pmc/utils/UtilDeclarations$5;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 965
    iget-object p1, p0, Lcom/conceptglobal/pmc/utils/UtilDeclarations$5;->val$context:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/conceptglobal/pmc/utils/UtilDeclarations$5;->val$context:Landroid/content/Context;

    const-class v1, Lcom/conceptglobal/pmc/LoginActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
