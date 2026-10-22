.class Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$2;
.super Ljava/lang/Object;
.source "FunctionalStateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 258
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 260
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment$2;->this$0:Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;->access$300(Lcom/conceptglobal/pmc/fragments/FunctionalStateFragment;)V

    return-void
.end method
