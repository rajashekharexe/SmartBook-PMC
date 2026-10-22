.class Lcom/conceptglobal/pmc/fragments/AddFarmer$36;
.super Ljava/lang/Object;
.source "AddFarmer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conceptglobal/pmc/fragments/AddFarmer;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;


# direct methods
.method constructor <init>(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V
    .locals 0

    .line 5034
    iput-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$36;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 5036
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5037
    iget-object p1, p0, Lcom/conceptglobal/pmc/fragments/AddFarmer$36;->this$0:Lcom/conceptglobal/pmc/fragments/AddFarmer;

    invoke-static {p1}, Lcom/conceptglobal/pmc/fragments/AddFarmer;->access$6700(Lcom/conceptglobal/pmc/fragments/AddFarmer;)V

    return-void
.end method
